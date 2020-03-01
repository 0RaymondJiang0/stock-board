package main

type Market struct {
	Region string `json:"region"`
	Status string `json:"status"`
}
type Quote struct {
	Name    string  `json:"name"`
	Symbol  string  `json:"symbol"`
	Current float64 `json:"current"`
}
type Data struct {
	Market `json:"market"`
	Quote  `json:"quote"`
}

type TargetData struct {
	Code        string  `json:"code"`
	TargetPrice float64 `json:"target_price"`
}
