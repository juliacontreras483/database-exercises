My music app assumptions...
  - all songs belong to at least one album
  - no albums have more than one artist (collaborations of multiple artists would be a unique entry in the artists table)
  - only one user may own a playlist (multiple users cannot own the same playlist)
  - users can only save songs to their library by adding them to a custom playlist
  - one genre per song and many genres per album
My chosen schema:
Tables...
    songs
    genres
    album_genre
    artists
    artist_details
    albums
    album_song
    users
    user_profiles
    playlists
    playlist_song
Relationships...
  1to1: users/user_profiles, artists/artist_details
  1toM: artists/songs, artists/albums, users/playlists
  MtoM: songs/playlists, songs/albums, albums/genres
Schema...
  songs
    id
    title
    duration_in_seconds
    artist_id
  genres
    id
    title
    description
  album_genre
    album_id
    genre_id
  artists
    id
    name
    description
  artist_details
    history
    country_of_origin
    date_of_public_debut
  albums
    id
    name
    artist_id
    albums_sold
    release_date
  album_song
    album_id
    song_id
  users
    id
    username
    email
    password
    created_at
  user_profiles
    first_name
    last_name
    bio
    user_id
  playlists
    id
    title
    user_id
  playlist_song
    playlist_id
    song_id