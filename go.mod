module Project_Gee

go 1.19

require (
	gee v0.0.0
	github.com/golang/protobuf v1.5.3
)

require google.golang.org/protobuf v1.26.0 // indirect

replace gee => ./gee
