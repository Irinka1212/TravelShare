<?php
    include_once 'dbConfig.php';

    $likes = "";
    $allUsers = $db->query("SELECT * FROM photos ORDER BY album ASC, user_name ASC");

    if($allUsers->num_rows > 0) {
        while($allUsersRow = $allUsers->fetch_assoc()) {
            $nameOfOwner = $allUsersRow['user_name'];
            $currentAlbum = $allUsersRow['album'];
            $currentLikes = $allUsersRow['likesCount'];
            $currentLikesUsers = $allUsersRow['likesUsers'];

            $likes = "like" . $nameOfOwner . $currentAlbum;
            $currentUser = $_SESSION['username'];

            if(isset($_POST[$likes])) {
                if(strpos($currentLikesUsers, $currentUser) !== false) {
                    $currentLikes = $currentLikes - 1;
                    $currentLikesUsers = str_replace($currentUser, '', $currentLikesUsers); 
                    $changeLikesUsers = $db->query("UPDATE photos set likesUsers = '$currentLikesUsers' WHERE user_name = '$nameOfOwner' AND  album = '$currentAlbum'");
                } else {
                    $currentLikes = $currentLikes + 1;
                    $currentLikesUsers = $currentLikesUsers . $_SESSION['username'];
                    $changeLikesUsers = $db->query("UPDATE photos set likesUsers = '$currentLikesUsers' WHERE user_name = '$nameOfOwner' AND  album = '$currentAlbum'");
            }
            $upLikes = $db->query("UPDATE photos SET likesCount = '$currentLikes' WHERE user_name = '$nameOfOwner' AND  album = '$currentAlbum'");
            header('location: index.php');
            exit();
            }
            $likes = "";
        }
    }