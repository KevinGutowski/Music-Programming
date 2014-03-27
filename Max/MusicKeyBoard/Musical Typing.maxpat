{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 6,
			"minor" : 1,
			"revision" : 6,
			"architecture" : "x86"
		}
,
		"rect" : [ 387.0, 205.0, 888.0, 572.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 14.0,
		"default_fontface" : 0,
		"default_fontname" : "Helvetica Neue",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"boxes" : [ 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 14.0,
					"hidden" : 1,
					"id" : "obj-116",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 23,
					"numoutlets" : 23,
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "FullPacket" ],
					"patching_rect" : [ 454.090912, 40.0, 601.0, 39.0 ],
					"text" : "o.route /sA /sS /sD /sF /sG /sH /sJ /sK /sL /sLL /sLLL /sW /sE /sT /sY /sU /sO /sP /sZ /sX /sC /sV"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 14.0,
					"id" : "obj-113",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 6,
							"minor" : 1,
							"revision" : 6,
							"architecture" : "x86"
						}
,
						"rect" : [ 987.0, 124.0, 636.0, 840.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 14.0,
						"default_fontface" : 0,
						"default_fontname" : "Helvetica Neue",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"visible" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Helvetica Neue",
									"fontsize" : 14.0,
									"id" : "obj-22",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 50.0, 785.0, 445.0, 23.0 ],
									"text" : "o.expr /sV = ((/ascii == v) || (/ascii == V)) && (/keystate == down)? 1 : 0"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica Neue",
									"fontsize" : 14.0,
									"id" : "obj-21",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 50.0, 762.0, 449.0, 23.0 ],
									"text" : "o.expr /sC = ((/ascii == c) || (/ascii == C)) && (/keystate == down)? 1 : 0"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica Neue",
									"fontsize" : 14.0,
									"id" : "obj-20",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 50.0, 729.0, 445.0, 23.0 ],
									"text" : "o.expr /sX = ((/ascii == x) || (/ascii == X)) && (/keystate == down)? 1 : 0"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica Neue",
									"fontsize" : 14.0,
									"id" : "obj-19",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 50.0, 699.0, 445.0, 23.0 ],
									"text" : "o.expr /sZ = ((/ascii == z) || (/ascii == Z)) && (/keystate == down)? 1 : 0"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica Neue",
									"fontsize" : 14.0,
									"id" : "obj-18",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 50.0, 668.0, 447.0, 23.0 ],
									"text" : "o.expr /sP = ((/ascii == p) || (/ascii == P)) && (/keystate == down)? 1 : 0"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica Neue",
									"fontsize" : 14.0,
									"id" : "obj-17",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 50.0, 634.0, 450.0, 23.0 ],
									"text" : "o.expr /sO = ((/ascii == o) || (/ascii == O)) && (/keystate == down)? 1 : 0"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica Neue",
									"fontsize" : 14.0,
									"id" : "obj-16",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 50.0, 602.0, 449.0, 23.0 ],
									"text" : "o.expr /sU = ((/ascii == u) || (/ascii == U)) && (/keystate == down)? 1 : 0"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica Neue",
									"fontsize" : 14.0,
									"id" : "obj-15",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 50.0, 569.0, 446.0, 23.0 ],
									"text" : "o.expr /sY = ((/ascii == y) || (/ascii == Y)) && (/keystate == down)? 1 : 0"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica Neue",
									"fontsize" : 14.0,
									"id" : "obj-14",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 50.0, 540.0, 441.0, 23.0 ],
									"text" : "o.expr /sT = ((/ascii == t) || (/ascii == T)) && (/keystate == down)? 1 : 0"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica Neue",
									"fontsize" : 14.0,
									"id" : "obj-13",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 50.0, 504.0, 446.0, 23.0 ],
									"text" : "o.expr /sE = ((/ascii == e) || (/ascii == E)) && (/keystate == down)? 1 : 0"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica Neue",
									"fontsize" : 14.0,
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 50.0, 475.0, 457.0, 23.0 ],
									"text" : "o.expr /sW = ((/ascii == w) || (/ascii == W)) && (/keystate == down)? 1 : 0"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica Neue",
									"fontsize" : 14.0,
									"id" : "obj-11",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 50.0, 452.0, 395.0, 23.0 ],
									"presentation_rect" : [ 50.0, 452.0, 0.0, 0.0 ],
									"text" : "o.expr /sLLL = (/keynum == 39) && (/keystate == down)? 1 : 0"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica Neue",
									"fontsize" : 14.0,
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 50.0, 419.0, 395.0, 23.0 ],
									"text" : "o.expr /sLLL = (/keynum == 39) && (/keystate == down)? 1 : 0"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica Neue",
									"fontsize" : 14.0,
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 50.0, 389.0, 387.0, 23.0 ],
									"text" : "o.expr /sLL = (/keynum == 59) && (/keystate == down)? 1 : 0"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica Neue",
									"fontsize" : 14.0,
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 50.0, 356.0, 440.0, 23.0 ],
									"text" : "o.expr /sL = ((/ascii == l) || (/ascii == L)) && (/keystate == down)? 1 : 0"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica Neue",
									"fontsize" : 14.0,
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 50.0, 322.0, 447.0, 23.0 ],
									"text" : "o.expr /sK = ((/ascii == k) || (/ascii == K)) && (/keystate == down)? 1 : 0"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica Neue",
									"fontsize" : 14.0,
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 50.0, 290.0, 439.0, 23.0 ],
									"text" : "o.expr /sJ = ((/ascii == j) || (/ascii == J)) && (/keystate == down)? 1 : 0"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica Neue",
									"fontsize" : 14.0,
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 50.0, 257.0, 449.0, 23.0 ],
									"text" : "o.expr /sH = ((/ascii == h) || (/ascii == H)) && (/keystate == down)? 1 : 0"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica Neue",
									"fontsize" : 14.0,
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 50.0, 223.0, 450.0, 23.0 ],
									"text" : "o.expr /sG = ((/ascii == g) || (/ascii == G)) && (/keystate == down)? 1 : 0"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica Neue",
									"fontsize" : 14.0,
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 50.0, 187.0, 441.0, 23.0 ],
									"text" : "o.expr /sF = ((/ascii == f) || (/ascii == F)) && (/keystate == down)? 1 : 0"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica Neue",
									"fontsize" : 14.0,
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 50.0, 152.0, 449.0, 23.0 ],
									"text" : "o.expr /sD = ((/ascii == d) || (/ascii == D)) && (/keystate == down)? 1 : 0"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica Neue",
									"fontsize" : 14.0,
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 50.0, 111.0, 446.0, 23.0 ],
									"text" : "o.expr /sS = ((/ascii == s) || (/ascii == S)) && (/keystate == down)? 1 : 0"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica Neue",
									"fontsize" : 14.0,
									"id" : "obj-109",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 50.0, 77.0, 447.0, 23.0 ],
									"text" : "o.expr /sA = ((/ascii == a) || (/ascii == A)) && (/keystate == down)? 1 : 0"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-111",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 50.0, 40.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-112",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 828.0, 25.0, 25.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-109", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-109", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-111", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-112", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-9", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 237.0, 153.5, 82.0, 23.0 ],
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Helvetica Neue",
						"default_fontsize" : 14.0,
						"description" : "",
						"digest" : "",
						"fontface" : 0,
						"fontname" : "Helvetica Neue",
						"fontsize" : 14.0,
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p KeyMaps"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.028793, 0.014609, 0.004912, 1.0 ],
					"bgcolor2" : [ 0.065106, 0.041228, 0.211568, 1.0 ],
					"fontname" : "Helvetica Neue",
					"fontsize" : 36.0,
					"gradient" : 1,
					"id" : "obj-107",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 765.0, 142.0, 40.0, 46.0 ],
					"presentation_rect" : [ 760.0, 142.0, 0.0, 0.0 ],
					"text" : "P",
					"textcolor" : [ 0.994916, 0.989806, 0.995031, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.028793, 0.014609, 0.004912, 1.0 ],
					"bgcolor2" : [ 0.065106, 0.041228, 0.211568, 1.0 ],
					"fontname" : "Helvetica Neue",
					"fontsize" : 36.0,
					"id" : "obj-106",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 725.0, 142.0, 40.0, 46.0 ],
					"presentation_rect" : [ 725.0, 142.0, 0.0, 0.0 ],
					"text" : "O",
					"textcolor" : [ 0.994916, 0.989806, 0.995031, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.028793, 0.014609, 0.004912, 1.0 ],
					"bgcolor2" : [ 0.065106, 0.041228, 0.211568, 1.0 ],
					"fontname" : "Helvetica Neue",
					"fontsize" : 36.0,
					"gradient" : 1,
					"id" : "obj-105",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 648.0, 142.0, 40.0, 46.0 ],
					"presentation_rect" : [ 644.0, 141.0, 0.0, 0.0 ],
					"text" : "U",
					"textcolor" : [ 0.994916, 0.989806, 0.995031, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.028793, 0.014609, 0.004912, 1.0 ],
					"bgcolor2" : [ 0.065106, 0.041228, 0.211568, 1.0 ],
					"fontname" : "Helvetica Neue",
					"fontsize" : 36.0,
					"gradient" : 1,
					"id" : "obj-104",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 608.0, 142.0, 40.0, 46.0 ],
					"presentation_rect" : [ 606.0, 141.0, 0.0, 0.0 ],
					"text" : "Y",
					"textcolor" : [ 0.994916, 0.989806, 0.995031, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.028793, 0.014609, 0.004912, 1.0 ],
					"bgcolor2" : [ 0.065106, 0.041228, 0.211568, 1.0 ],
					"fontname" : "Helvetica Neue",
					"fontsize" : 36.0,
					"gradient" : 1,
					"id" : "obj-103",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 568.0, 142.0, 40.0, 46.0 ],
					"presentation_rect" : [ 563.0, 148.0, 0.0, 0.0 ],
					"text" : "T",
					"textcolor" : [ 0.994916, 0.989806, 0.995031, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.028793, 0.014609, 0.004912, 1.0 ],
					"bgcolor2" : [ 0.065106, 0.041228, 0.211568, 1.0 ],
					"fontname" : "Helvetica Neue",
					"fontsize" : 36.0,
					"gradient" : 1,
					"id" : "obj-102",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 488.0, 142.0, 40.0, 46.0 ],
					"presentation_rect" : [ 492.0, 148.0, 0.0, 0.0 ],
					"text" : "E",
					"textcolor" : [ 0.994916, 0.989806, 0.995031, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.028793, 0.014609, 0.004912, 1.0 ],
					"bgcolor2" : [ 0.065106, 0.041228, 0.211568, 1.0 ],
					"fontname" : "Helvetica Neue",
					"fontsize" : 36.0,
					"gradient" : 1,
					"id" : "obj-100",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 443.0, 142.0, 45.0, 46.0 ],
					"presentation_rect" : [ 455.0, 150.0, 0.0, 0.0 ],
					"text" : "W",
					"textcolor" : [ 0.994916, 0.989806, 0.995031, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.607843, 0.909804, 0.439216, 0.0 ],
					"bgcolor2" : [ 0.111834, 0.606069, 0.15491, 1.0 ],
					"fontname" : "Helvetica Neue",
					"fontsize" : 36.0,
					"id" : "obj-99",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 827.0, 182.0, 40.0, 46.0 ],
					"presentation_rect" : [ 826.0, 182.0, 0.0, 0.0 ],
					"text" : "'"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.607843, 0.909804, 0.439216, 0.0 ],
					"bgcolor2" : [ 0.111834, 0.606069, 0.15491, 1.0 ],
					"fontname" : "Helvetica Neue",
					"fontsize" : 36.0,
					"id" : "obj-98",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 787.0, 182.0, 40.0, 46.0 ],
					"presentation_rect" : [ 790.0, 183.0, 0.0, 0.0 ],
					"text" : ";\r"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.607843, 0.909804, 0.439216, 0.0 ],
					"bgcolor2" : [ 0.111834, 0.606069, 0.15491, 1.0 ],
					"fontname" : "Helvetica Neue",
					"fontsize" : 36.0,
					"id" : "obj-97",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 747.0, 182.0, 40.0, 46.0 ],
					"presentation_rect" : [ 747.0, 183.0, 0.0, 0.0 ],
					"text" : "L"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.607843, 0.909804, 0.439216, 0.0 ],
					"bgcolor2" : [ 0.111834, 0.606069, 0.15491, 1.0 ],
					"fontname" : "Helvetica Neue",
					"fontsize" : 36.0,
					"id" : "obj-96",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 707.0, 182.0, 40.0, 46.0 ],
					"presentation_rect" : [ 705.0, 182.0, 0.0, 0.0 ],
					"text" : "K"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.607843, 0.909804, 0.439216, 0.0 ],
					"bgcolor2" : [ 0.111834, 0.606069, 0.15491, 1.0 ],
					"fontname" : "Helvetica Neue",
					"fontsize" : 36.0,
					"id" : "obj-95",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 667.0, 182.0, 40.0, 46.0 ],
					"presentation_rect" : [ 665.0, 182.0, 0.0, 0.0 ],
					"text" : "J"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.607843, 0.909804, 0.439216, 0.0 ],
					"bgcolor2" : [ 0.111834, 0.606069, 0.15491, 1.0 ],
					"fontname" : "Helvetica Neue",
					"fontsize" : 36.0,
					"id" : "obj-92",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 627.0, 182.0, 40.0, 46.0 ],
					"presentation_rect" : [ 626.0, 183.0, 0.0, 0.0 ],
					"text" : "H"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.607843, 0.909804, 0.439216, 0.0 ],
					"bgcolor2" : [ 0.111834, 0.606069, 0.15491, 1.0 ],
					"fontname" : "Helvetica Neue",
					"fontsize" : 36.0,
					"id" : "obj-93",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 587.0, 182.0, 40.0, 46.0 ],
					"presentation_rect" : [ 586.0, 183.0, 0.0, 0.0 ],
					"text" : "G"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.607843, 0.909804, 0.439216, 0.0 ],
					"bgcolor2" : [ 0.111834, 0.606069, 0.15491, 1.0 ],
					"fontname" : "Helvetica Neue",
					"fontsize" : 36.0,
					"id" : "obj-94",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 547.0, 182.0, 40.0, 46.0 ],
					"presentation_rect" : [ 546.0, 183.0, 0.0, 0.0 ],
					"text" : "F"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.607843, 0.909804, 0.439216, 0.0 ],
					"bgcolor2" : [ 0.111834, 0.606069, 0.15491, 1.0 ],
					"fontname" : "Helvetica Neue",
					"fontsize" : 36.0,
					"id" : "obj-91",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 507.0, 182.0, 40.0, 46.0 ],
					"presentation_rect" : [ 466.0, 207.0, 0.0, 0.0 ],
					"text" : "D"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.607843, 0.909804, 0.439216, 0.0 ],
					"bgcolor2" : [ 0.111834, 0.606069, 0.15491, 1.0 ],
					"fontname" : "Helvetica Neue",
					"fontsize" : 36.0,
					"id" : "obj-90",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 467.0, 182.0, 40.0, 46.0 ],
					"presentation_rect" : [ 430.0, 207.0, 0.0, 0.0 ],
					"text" : "S"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.607843, 0.909804, 0.439216, 0.0 ],
					"bgcolor2" : [ 0.111834, 0.606069, 0.15491, 1.0 ],
					"fontname" : "Helvetica Neue",
					"fontsize" : 36.0,
					"id" : "obj-89",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 427.0, 182.0, 40.0, 46.0 ],
					"presentation_rect" : [ 392.0, 207.0, 0.0, 0.0 ],
					"text" : "A"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 14.0,
					"id" : "obj-82",
					"linecount" : 33,
					"maxclass" : "o.message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 4.0, 239.5, 150.0, 544.0 ],
					"text" : "/ascii \"g\" \n/keystate \"up\" \n/keynum 103 \n/shift \"up\" \n/capslock \"up\" \n/option \"up\" \n/control \"up\" \n/command \"up\" \n/numKeysDown 0 \n/fingerIndex 1 \n/velocity 100 \n/sA 0 \n/sS 0 \n/sD 0 \n/sF 0 \n/sG 0 \n/sH 0 \n/sJ 0 \n/sK 0 \n/sL 0 \n/sLL 0 \n/sLLL 0 \n/sW 0 \n/sE 0 \n/sT 0 \n/sY 0 \n/sU 0 \n/sO 0 \n/sP 0 \n/sZ 0 \n/sX 0 \n/sC 0 \n/sV 0 \n",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 14.0,
					"id" : "obj-79",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 295.0, 12.0, 69.0, 23.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 14.0,
					"id" : "obj-76",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "FullPacket" ],
					"patching_rect" : [ 151.0, 111.0, 105.0, 23.0 ],
					"text" : "o.route /octave"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 14.0,
					"id" : "obj-75",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 6,
							"minor" : 1,
							"revision" : 6,
							"architecture" : "x86"
						}
,
						"rect" : [ 25.0, 69.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 14.0,
						"default_fontface" : 0,
						"default_fontname" : "Helvetica Neue",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"boxes" : [ 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-1",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 122.0, 48.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica Neue",
									"fontsize" : 14.0,
									"id" : "obj-69",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 161.0, 78.0, 21.0 ],
									"text" : "append $1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica Neue",
									"fontsize" : 14.0,
									"id" : "obj-66",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "bang", "bang" ],
									"patching_rect" : [ 122.0, 100.0, 46.0, 23.0 ],
									"text" : "t i b b"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica Neue",
									"fontsize" : 14.0,
									"id" : "obj-63",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 130.0, 161.0, 88.0, 21.0 ],
									"text" : "append \" C\""
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica Neue",
									"fontsize" : 14.0,
									"id" : "obj-60",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 218.0, 161.0, 78.0, 21.0 ],
									"text" : "set Octave"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-74",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 127.666656, 242.0, 25.0, 25.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-66", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-74", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-60", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-74", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-63", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-60", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-66", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-63", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-66", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-69", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-66", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-74", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-69", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 151.0, 182.0, 71.0, 23.0 ],
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Helvetica Neue",
						"default_fontsize" : 14.0,
						"description" : "",
						"digest" : "",
						"fontface" : 0,
						"fontname" : "Helvetica Neue",
						"fontsize" : 14.0,
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p Dataset"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.904856, 0.595583, 0.830241, 1.0 ],
					"bgcolor2" : [ 0.889891, 0.767103, 0.408675, 1.0 ],
					"fontname" : "Helvetica Neue",
					"fontsize" : 36.0,
					"gradient" : 1,
					"id" : "obj-48",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 568.0, 228.0, 40.0, 46.0 ],
					"presentation_rect" : [ 585.0, 343.0, 0.0, 0.0 ],
					"text" : "V"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.904856, 0.595583, 0.830241, 1.0 ],
					"bgcolor2" : [ 0.889891, 0.767103, 0.408675, 1.0 ],
					"fontname" : "Helvetica Neue",
					"fontsize" : 36.0,
					"gradient" : 1,
					"id" : "obj-47",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 528.0, 228.0, 40.0, 46.0 ],
					"presentation_rect" : [ 548.0, 343.0, 0.0, 0.0 ],
					"text" : "C"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.894374, 0.960755, 0.835435, 1.0 ],
					"bgcolor2" : [ 0.889891, 0.767103, 0.408675, 1.0 ],
					"fontname" : "Helvetica Neue",
					"fontsize" : 36.0,
					"gradient" : 1,
					"id" : "obj-46",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 488.0, 228.0, 40.0, 46.0 ],
					"presentation_rect" : [ 528.0, 343.0, 0.0, 0.0 ],
					"text" : "X"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.894374, 0.960755, 0.835435, 1.0 ],
					"bgcolor2" : [ 0.889891, 0.767103, 0.408675, 1.0 ],
					"fontname" : "Helvetica Neue",
					"fontsize" : 36.0,
					"gradient" : 1,
					"id" : "obj-45",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 448.0, 228.0, 40.0, 46.0 ],
					"text" : "Z"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 14.0,
					"id" : "obj-39",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 151.0, 64.0, 57.0, 23.0 ],
					"text" : "o.union"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 14.0,
					"id" : "obj-38",
					"linecount" : 2,
					"maxclass" : "o.message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 295.0, 56.0, 150.0, 39.0 ],
					"text" : "/octave 2 \n/velocity 100 ",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 14.0,
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "float", "float" ],
					"patching_rect" : [ 266.0, 392.0, 72.0, 23.0 ],
					"text" : "makenote"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 14.0,
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 0,
					"patching_rect" : [ 266.0, 429.0, 58.0, 23.0 ],
					"text" : "noteout"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 14.0,
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 151.0, 12.0, 135.0, 23.0 ],
					"text" : "m158.o.io.keyboard"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 14.0,
					"frgb" : 0.0,
					"id" : "obj-58",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 368.0, 239.5, 105.0, 23.0 ],
					"text" : "Octave C2"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-116", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-113", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-82", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-113", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-100", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-116", 11 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-102", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-116", 12 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-103", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-116", 13 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-104", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-116", 14 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-105", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-116", 15 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-106", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-116", 16 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-107", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-116", 17 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-116", 18 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-46", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-116", 19 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-116", 20 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-116", 21 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-89", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-116", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-90", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-116", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-91", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-116", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-92", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-116", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-93", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-116", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-94", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-116", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-95", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-116", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-96", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-116", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-97", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-116", 8 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-98", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-116", 9 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-99", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-116", 10 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-76", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-75", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-113", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-76", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-75", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-76", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-79", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-9", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "m158.o.io.keyboard.maxpat",
				"bootpath" : "/Applications/Max 6.1/Max Externals/odot/abstractions",
				"patcherrelativepath" : "../../../../../Applications/Max 6.1/Max Externals/odot/abstractions",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "o.pack.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.change.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.union.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.message.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.route.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.expr.mxo",
				"type" : "iLaX"
			}
 ]
	}

}
