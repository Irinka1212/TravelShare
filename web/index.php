<?php
    require_once 'controllers/authController.php';
    include 'upload.php';
   

    if (!isset($_SESSION['id'])) {
        header('location: login.php');
        exit();
    }
    include 'likes.php';

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link type="text/css" rel="stylesheet" href="main.css">
    <script type="text/javascript" src="./utils.js" defer></script>
    <title>Homepage</title>
</head>
<body>
    <div id="header">
        <ul id="left">
            <li style="color: white; display:inline;"> Welcome, <?php echo $_SESSION['username'] ?></li>
        </ul>
        <ul>
            <li><a href="profile.php">Profile</a></li>
            <li><a href="chatroom.php">Messenger</a></li>
            <li><a href="index.php?logout=1">Logout</a></li>
        </ul>
    </div>
    <div id="under">
        <img class="logo"  src="boeing-1595-cropped.svg" alt="logo" height="180">
    </div>
    <div class="main-btns-wrapper">
        <button id="main-create-post-btn" onclick="showCreateForm()">Create Post</button>
        <button id="main-search-btn" onclick="showSearchForm()">Search</button>
    </div>
    <div class="forms">
        <div  style="border-radius:10px"  class="uploader no-display">
            <form action="" method="post" enctype="multipart/form-data"> 
                <input type="text" name="album" placeholder="Enter Album Name...">
                <textarea name="text" cols="48" rows="6" placeholder="Say something about this album of images..."></textarea>
                <div class="upload-wrapper">

                <div class="upload-picture-wrapper">
                    <label for="upload-picture" class="field-wrapper"><i class="fa">&#xf0c6;</i> Choose photo(s)</label>
                    <input type="file" name="files[]" id="upload-picture" class="uploadfield" multiple>
                </div>

                    <input type="submit" name="submit" value="UPLOAD" class="button">
                </div>   
            </form>
        </div>
        <div  style="border-radius:10px"  class="searchBar no-display">
            <form action="search.php" method="post"> 
                <div class="search-wrapper">
                    <input type="text" name="validUser" placeholder="Enter username for search..." class="searchBox">
                    <input type="submit" name="searchName" value="Search user" class="button">
                </div>
                <div class="search-wrapper">
                    <input type="text" name="validAlbum" placeholder="Enter album name for search..." class="searchBox">
                    <input type="submit" name="searchAlbum" value="Search album" class="button">
                </div>  
            </form>
        </div>
    </div>

    <?php
        include_once 'dbConfig.php';

        $query = $db->query("SELECT * FROM photos ORDER BY album ASC, user_name ASC");
        $copyQuery = $db->query("SELECT * FROM photos ORDER BY album ASC, user_name ASC");

        $copyRow = $copyQuery->fetch_assoc();
        $copyAlbum = $copyRow['album'];
        $copyCreator = $copyRow['user_name'];
        $count = 0;
        $countShowBtns=0;

        if ($query->num_rows > 0) {
            while ($row = $query->fetch_assoc()) {
                $imageURL = 'uploads/' . $row["file_name"];
                $uploadedBy = $row['user_name'];
                $text = $row['text'];
                $album = $row['album'];
                $nLikes = $row['likesCount'];
                $same = "";
    ?>
                <?php if ($count == 0 || $album !== $copyAlbum || $uploadedBy !== $copyCreator) : ?>
                    <br>
                    <div class="album-wrapper">
                        <h2>
                            <?php echo "Album: " . $album;
                                $count++;
                                $copyAlbum = $album;
                                $copyCreator = $uploadedBy;
                                $same = $imageURL;
                            ?>
                        </h2>
                        <h2>
                            <?php echo "Author: " . $uploadedBy; ?>
                        </h2>
                        <button class="like">
                            <i class="fa fa-thumbs-o-up" style="  margin-left: 0; 
  margin-right: 0; " aria-hidden="true"></i>
                            <form style="margin-bottom: 0;" action="" method="post">
                                <input  type="submit" id="like" name="<?php echo "like" . $uploadedBy . $album; ?>" value ="Likes"/>
                            </form>
                            <span><?php echo $nLikes; ?></span> 
                        </button>
                    </div>
                    <div class="album-content-wrapper">
                        <div class="main-image-para-wrapper">
                            <?php if(file_exists($imageURL)):?>
                                <img style="margin: 2em; max-width: 400px" src="<?php echo $imageURL;?>" alt="" />
                            <?php endif; ?>
                            <p class="description">
                                <?php echo $text; ?>
                            </p>
                        </div>
                        <div class="small-images-btn-container">
                            <div class="small-images-wrapper no-display">
                            </div>
                            <button class="images-btn" onclick="changeVisibility('<?php echo $countShowBtns;?>')"> Show more photos</button>
                            <?php  $countShowBtns++; ?>
                        </div>
                    </div>
                <?php endif; ?>
                                
                <?php if($same !== $imageURL && file_exists($imageURL)):?> 
                    <script type="text/javascript" defer>
                        var new_img_el = document.createElement("img");
                        new_img_el.setAttribute("src", "<?php echo $imageURL; ?>");
                        var all_wrappers = document.getElementsByClassName('small-images-wrapper');
                        var curr_wrapper = all_wrappers[all_wrappers.length-1];
                        curr_wrapper.appendChild(new_img_el);
                    </script>
                <?php endif; ?>     
            <?php }
        } else { ?>
            <p>No images found</p>
    <?php } ?>
    
    <div id="footer">
        &copy; 2022 www.worldwidelens.com. All Rights Reserved.
    </div>
</body>
</html>