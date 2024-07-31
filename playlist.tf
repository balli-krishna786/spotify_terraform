resource "spotify_playlist" "Marathi_Songs" {
  name = "Marathi"
  tracks = ["30kNnGKiPMYQUPKHOW87lj"]
}

data "spotify_search_track" "Abhang" {
    artist = "Mahesh Kale"
    
}

resource "spotify_playlist" "Abhang" {
    name = "Abhang"
    tracks = [
              data.spotify_search_track.Abhang.tracks[0].id,
              data.spotify_search_track.Abhang.tracks[1].id,
              data.spotify_search_track.Abhang.tracks[2].id
             ]
  
}
