<?php
    include 'header.php';
?>

<div id="header">
    <ul id="left">
    </ul>
    <ul>
        <li><a href="index.php">Home</a></li>
        <li><a href="profile.php">Profile</a></li>
        <li><a href="index.php?logout=1">Logout</a></li>
    </ul>
</div>
<div id="under">
        <img class="logo"  src="boeing-1595-cropped.svg" alt="logo" height="180">
    </div>
<div class="gallery">
    <?php 
        $first = "";
        $second = "";
        $countShowBtns=0;

        if(isset($_POST['searchName'])) {
            $first = $_POST['validUser'];

            if(!empty($first)) {
                echo "<h1 class='search-title'>".$first."'s albums: </h1>";
    
                $getAll = $db->query("SELECT * FROM photos ORDER BY album ASC, user_name ASC");
            
                $copyGetAll = $db->query("SELECT * FROM photos ORDER BY album ASC, user_name ASC");
                $copyGetRow = $copyGetAll->fetch_assoc();
                $copyGetAlbum = $copyGetRow['album'];
                $searchCount = 0;
    
                if($getAll->num_rows > 0) {
                    while($getAllRow = $getAll->fetch_assoc()) {
                        $searchUser = $getAllRow['user_name'];
                        if($searchUser === $first){
    
                            $url = 'uploads/' . $getAllRow["file_name"];
                            $searchText = $getAllRow['text'];
                            $searchAlbum = $getAllRow['album'];
                            $searchSame = "";
        
                            if($searchCount == 0 || $copyGetAlbum !== $searchAlbum) {
                            
                                echo "<h2 class='search-item-title'>Album name: ".$searchAlbum."</h2>";
                                $searchCount++;
                                $copyGetAlbum = $searchAlbum;
                                $searchSame = $url;
            
                                echo "<div class='main-image-para-wrapper'>";
                                if(file_exists($url)) {
                                    echo "<img style='margin-right:1em' src='".$url."' alt='' />";
                                }
            
                                echo "<p>".$searchText."";
                                echo " </div>";
                            
                                echo ' <div class="small-images-btn-container">
                                <div class="small-images-wrapper no-display"></div>';

                                echo '<button class="images-btn" onclick="changeVisibility('.$countShowBtns.')"> Show more photos</button>';
                            
                                $countShowBtns++;
                                echo '</div>';
                            }
        
                            if($searchSame !== $url && file_exists($url)){
                                echo '<script type="text/javascript" defer> 
                                var new_img_el = document.createElement("img");
                                new_img_el.setAttribute("src", "'.$url.'");
                                new_img_el.style.maxWidth = "400px";
                                new_img_el.style.maxHeight = "250px";
                                var all_wrappers = document.getElementsByClassName("small-images-wrapper");
                                var curr_wrapper = all_wrappers[all_wrappers.length-1];
                                curr_wrapper.appendChild(new_img_el);
                                </script>';  
                            }
                        }
                    }
                } else {
                    echo "<p style='margin-bottom: 0px; padding-bottom: 20px;'>No images found...</p>";
                }    
            } else {
                header('location: index.php');
                exit();
            }
        }

        if(isset($_POST['searchAlbum'])) {

            $second = $_POST['validAlbum'];

            if(!empty($second)) {
                echo "<h1 class='search-title'>Albums containing: ".$second."</h1>";
    
                $getAll = $db->query("SELECT * FROM photos ORDER BY album ASC, user_name ASC");
            
                $copyGetAll = $db->query("SELECT * FROM photos ORDER BY album ASC, user_name ASC");
                $copyGetRow = $copyGetAll->fetch_assoc();
                $copyGetUser = $copyGetRow['user_name'];
                $copyGetAlbum = $copyGetRow['album'];
                $searchCount = 0;
    
                if($getAll->num_rows > 0) {
                    while($getAllRow = $getAll->fetch_assoc()) {
                        $searchGetAlbum = $getAllRow['album'];

                        if(strpos($searchGetAlbum, $second) !== false) {

                            $url = 'uploads/' . $getAllRow["file_name"];
                            $searchUser = $getAllRow['user_name'];
                            $searchText = $getAllRow['text'];
                            $searchAlbum = $getAllRow['album'];
                            $searchSame = "";
                            
                            if($searchCount == 0 || $copyGetAlbum !== $searchAlbum || $searchUser !== $copyGetUser) {
                                echo "<br>";
                                echo "<h2 class='search-item-title'>Album name: ".$searchAlbum.", Author: ".$searchUser."</h2>";
                                $searchCount++;
                                $copyGetAlbum = $searchAlbum;
                                $copyGetUser = $searchUser;
                                $searchSame = $url;
                                echo "<div class='main-image-para-wrapper'>";
                                if(file_exists($url)) {
                                    echo "<img style='margin-right:1em'' src='".$url."' alt='' />";
                                }
            
                                echo "<p>".$searchText."</p>";
                                echo " </div>";
                                echo ' <div class="small-images-btn-container">
                                <div class="small-images-wrapper no-display"></div>';

                                echo '<button class="images-btn" onclick="changeVisibility('.$countShowBtns.')"> Show more photos</button>';
                            
                                $countShowBtns++;
                                 echo '</div>';
                            }
        
                            if($searchSame !== $url && file_exists($url)) {
                                echo '<script type="text/javascript" defer> 
                                var new_img_el = document.createElement("img");
                                new_img_el.setAttribute("src", "'.$url.'");
                                new_img_el.style.maxWidth = "400px";
                                new_img_el.style.maxHeight = "250px";
                                var all_wrappers = document.getElementsByClassName("small-images-wrapper");
                                var curr_wrapper = all_wrappers[all_wrappers.length-1];
                                curr_wrapper.appendChild(new_img_el);
                                </script>';  
                            }
                        }
                    }
                } else {
                    echo "<p style='margin-bottom: 0px; padding-bottom: 20px;'>No image(s) found...</p>";
                }    
            } else {
                header('location: index.php');
                exit();
            }
        }
    ?>
</div>
