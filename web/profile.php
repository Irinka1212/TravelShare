<?php
    require_once 'controllers/authController.php';
    include 'delete.php';

    if (!isset($_SESSION['id'])) {
        header('location: login.php');
        exit();
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link type="text/css" rel="stylesheet" href="main.css">
    <script type="text/javascript" src="./utils.js" defer></script>
    <title>Profile</title>
</head>
<body>
    <div id="header">
        <ul id="left">
            <li style="color: white; display:inline;"> Welcome, <?php echo $_SESSION['username']?></li>
        </ul>
        <ul>
            <li><a href="index.php">Home</a></li>
            <li><a href="index.php?logout=1">Logout</a></li>
        </ul>
    </div>
    <div id="under">
        <img class="logo"  src="boeing-1595-cropped.svg" alt="logo" height="180">
    </div>
    <div class="container">
        <?php if (isset($_SESSION['message'])) : ?>
            <div class="alert <?php echo $_SESSION['alert-class']; ?>">
                <?php
                echo $_SESSION['message'];
                unset($_SESSION['message']);
                unset($_SESSION['alert-class']);
                ?>
            </div>
        <?php endif; ?>
        <div class="gallery" style="margin-top: 0px;">
            <?php
                include_once 'dbConfig.php';

                $query = $db->query("SELECT * FROM photos ORDER BY album ASC, user_name ASC");
                $copyQuery = $db->query("SELECT * FROM photos ORDER BY album ASC, user_name ASC");
                $copyRow = $copyQuery ->fetch_assoc();
                $copyAlbum = $copyRow['album'];
                $count = 0;
                $lookForEmail = $_SESSION['username'];
                $countShowBtns=0;
            
                if($query->num_rows > 0) {
                    while($row = $query->fetch_assoc()) {
                        $imageURL = 'uploads/'.$row["file_name"];
                        $uploadedBy = $row['user_name'];

                        $text = $row['text'];
                        $album = $row['album'];
                        $same = "";
            ?>

                        <?php if($lookForEmail === $uploadedBy): ?>
                        <?php if ($count == 0 || $album !== $copyAlbum) : ?>
                            <br>
                            <h2 style="float: right; margin-right: 100px;">
                                <?php echo "Album name: " . $album;
                                    $count++;
                                    $copyAlbum = $album;
                                    $copyCreator = $uploadedBy;
                                    $same = $imageURL;
                                ?>
                            </h2>
                            <h2>
                                <?php echo "Album author: " . $uploadedBy;?>
                            </h2>
                            <div class="update-form-container">
                                <form class="update-form" action="profile.php" method = "post" enctype="multipart/form-data">
                                    <p id="changeForm">    
                                        <div class="row">
                                            <input type="text" name="<?php echo "changeName" . $album;?>" placeholder="Change album name" id="text">
                                            <input type="submit" name="<?php echo "rename" . $album;?>" value="Rename album" class="change">
                                        </div>             
                                        <div class="row">
                                            <textarea name="<?php echo "changeText" . $album;?>" cols="80" rows="7"><?php echo $text; ?></textarea>
                                            <input type="submit" name="<?php echo "retext" . $album;?>" value="Change description" class="change">
                                        </div>
                                        <div class="row">
            



                                        
                                        <div class="upload-picture-wrapper">
                                                <label for="upload-picture" class="field-wrapper"><i class="fa">&#xf0c6;</i> Choose photo(s)</label>
                                                <input type="file" name="files[]" id="upload-picture" class="uploadfield" multiple>
                                        </div>
                                            <input type="submit" name="<?php echo "submit" . $album; ?>" value="Add photos to album" id="upl">
                                        




                                            

                                        </div>
                                        


                                        <div class="del-btn-wrapper">
                                            <input type="submit"  name="<?php echo "delete" . $album;?>" value="Delete album" id="del"> 
                                        </div>   
                                    </p>
                                </form> 
                            </div>
                            <button class="preview-btn" onclick="showPreview('<?php echo $countShowBtns;?>')"> Preview </button>
                            <div class="album-content-wrapper no-display">
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
                        <?php endif; ?>

                    <?php }
                } else { ?>
                     <p style="margin-bottom: 0px; padding-bottom: 20px;">No images found...</p>
            <?php } ?>   
        </div>
    </div>
    <div id="footer">
        &copy; 2022 www.worldwidelens.com. All Rights Reserved.
    </div>
</body>
</html>