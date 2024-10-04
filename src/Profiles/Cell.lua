local addonName, addonTable = ...
local Utils = addonTable.Utils

function GetCellSettings()
	return '!CELL:240:ALL!TVxd0TX11zQrGdfnvKf1p0EKLT0yjrBjyrksWFKeSDCaiGibfjbciOuSK8YzaWamWeCWOzgizkzLnM2HhVPB2UHNS6S72Zzpkm(SjoojTLvXP5h3uZLXnoTo6zA1uuVnBSzuCC(zTBuDI3Me3DV33BgGH)izkVj72MyE4amZBEV77EVV77((U33dCp6w0RpNw6CPKTkyeZq5e5uo5aPKZRCDgzv0umKZ)ORFmt1cNCGc5lizKroTs0Iws6BunxALefkK3kNUzeTolmsszlPPhrrRyScM5SYvqBsRc6dLSGLvHr0xNC(tkpQ5G6PLTucwmtgtPjqQgt2WAuPK5lKAyL0Q6BWD1cPKKwr96SS7hhkFKjdgnrIO91B4dKWiKsg5I5Tmseng(m3wNFNfOOHSP0ywgYAM5ZzPsfM4Y5slPVougcMp3PoLSrAgNmNIMCY8LfmPzZyipIsmJCfmYznQFVb7toNMK3jgqVGv(CzvTu9o97VyUudlgW0mNPLQ(glAQ0zELIDRiN3sLXdgQ615UVOD)ufoHIHbuAVDDaPXm1YPRRyzE9DyixegkkQPgud6A96tMlRiW5qxKtt0svrmfWjbtviTY2QTwUBJClseXhOkPgBu0HgIPK1etQiMPqrT0IYwIQww6M(3ZEYcYFXKnLQWi7rrlTIHMYWf2tNk5ZVhldfL9mISjWR7Pjh6ulqtqAe32Ea2reRxOGh92DE7TFFhT577U1YLxmUs(cYPhmYo312eTkiAOyQybCAothoQwKsOPJyHIwIf1YzjMSiyxOjMlJOQUOUIrkfnlX7sCNAfhjPIHFXMBSLDvBNH7T3HoqGqHhk6GjgQ7Wb6nr3dflC8od3FcX7we6BkLLtNw0S4iJG0lvbntKjgWs2QOPyKuyHo23I7mjmWQiRTBGjTKbwVGw(rT7NbgSV(I2)qr6mA)dmu4(deS3WHGojJCEtLADufMk6YgWiQ4jZL2svug0VQkODaOSnetv0em2D1Fm2XPxT7O4H7mrG(7AWEdeFOohCaWoEOi9hksNbsenoR7Nx3oi0TAWWpAnykMXa6GquM38wfdjpICwfX(uGXnxcx)q1tiNTXwAQzX85sAiB4iK9hPZdMiqxlP8zOmcyskAagNGCAvuxmnRFyDkA6zpruSqg6JODSZi5ceYerJ2BIiXaHTVOhk8qXdej0qdeoXGXgku4ebI078LXKfmaZr0MbKtftt)ZZib1YOM0X6WUlcgnEOWXhAGihjmqSwyJrUAMnrtboUaLZPn2Ty2DlMC3IYNz3Il2mZMADgT3OXbYD6M3Ti7)wodLYOBdMUbmOflCsW3OioKiUZTDOWDhPZEdVTDlUT(d0h(nyz6yv1D0dZK(yHtmu0d3p0hyLCz(I2v9Mlj6WaCJoIRXrTcAnYmuTP2GdeEOEJeeNj0z0(6BE6WuqRsd8LOP1O5vO2JOsBpuNRvSjnPmC8eG9wVih3zVr78GBZM(DcJAHaMCObsCV9I8yLQohZ4oHYdyveMHx7SPmkCY0DwqZYOqEZBBS05mrpNPRnjRI1o1Xr)Im3IqTrpyDcoyYPL18etfkCGeDFW(J0v3jgFM163BCRr1vAjPLmSQJf7jFW6hzZMxbxsX)eyjncEuJh3uhCevZL3ZLzE5tqBcq1dnZAj7ij4Bd8dq2X5HhEJJq2XJr)2VxYUiE9sUdYU9tAK0e0CsZlrHNFTlrHtGE0PKv6XwQ3RVoZrGfpIRyw0WqjfUafWid0DG(c0)4PRZDlMIkgMQ5YyfN00JCgYEou66i7WcUEe4I0mzhHocE)86M2OvT5VP3jafqJunf8UYp4dRZUawzRH8pfL20IBfAvq3f4J00LUl)tMYYiVnrAsGRXE8t12qFuZRxWp0HqHnDowHTIpS1)A)L7Q2inOVX9GgSh99nsb4BCnS7tSLw9RxhLUU7(g03WIR6(DXaadju9)MDh6ilH02IK1sPe8LuRGXiY5nIfO3aHI0)4F0EwWaIa)B(VJw7AU5ZbQ3pmykCeMM9Hj74JIpDvBrZNYwh0)JZuQr)hz6I2XcdCw)e)WnEwZ96NCNWB3WP9t2lsIF8NYl59r29dFvjElsF4R679rceewd6GJ)ylsLiW90)iqCUiyLCjBlLzGVFmq2UyDlzLb7fs7yPDyBFiW9x8NzlCp9pWpz)4nt)lCBHqTi(b16AiIAb8nootQ5E6lqLAbUl9h7NCxKgi3T)5qtdxvVbY94N0joWk8WxAPzSwKMzPFbi(XdfFWiHo7fwOAQMyvX0spZ7N08lUabRMT9QugmDZ(jHHh7ESkwSGauZXFn)Wytt18uDyl13Bw)K9bf8WFpB553heSdqV5zCemMI6J1WZF1yfFZYmhVJuu8VVWvRU7jJfmyDb2y3Zr2XZt2Xlat9pYvPnp3vJETiLm8HIEWWXhFMJEU6yJW8p8BrRSJckEMcG3yQWkW)F(u22QArydr8JTDQIrG)l8JzAg(h6KSHA(ZEq)Ki4nFYwzQgEtFUnvWPd8FQFivHlW)7VxQABj9n0MF9nw2izE(hi3dyrpZrj74JFuMwzJhdMFsFEr2h8p8QxGhB7s34XwY62I65xAIagzjJfps4bsm(owKzyA0JCvW8Qn6mhdgY2b95Vm1u5nePk6l(HO2h74drvK18qTr1AZ8HOk4AU9E9cAtVuhcmfe3wgHzX9L)S(HHMMc1aP5Zv3cmJTjksL9Z6jGy(AF)DqB62PDHVwAD)0(mERT28E7GogfVLMBUdMPFqFn3EZl2xmmVo(EBTvFTthUt6R5223(ydRXBBV7DF7JzZ3VFsx4GYmhzjulTOwvDNBDlhowyLV5Z5IJpFnu(LmaLxbDdLrjdY8F(LoVFYHCuqaVr(au2QMh6jlppKYt4W2LttdimyE5udNhavCUnvJ44cR843snV8PR5LFqbU9pNqvx3pvG)NTDbpn0LWk)v)5c8Y(e417e8pVkbpVVVJq179prO6h(Jju9)2pUa)p84cvFMNvG)X)GWmG6fQ6x9FsG7PUbHQ)GNxG)l((fQ(d)Qlo24a51vL9mbfBdcNPwdz6k(M(9wJWj8U(a(J5P5MAZdNxy6ru85UVNp9te(V8ohQ5UVNN(xo43)Z)79j8aV7XJ5DBD2QFpE4IJGQnZqQsAweJzqzlR8kayc1PsRiBPgxrVGHLx16Ncf(eq3nSIrpsZYcSUrRcW)6BY7m30JuxCagYWM9OQMeEP6qQ1oTHIC6rdOLowX857rDkla82qm0XEbSX04MxBT61TqH82IBIPayvgidfiFEi81uQYAzH48YAEiOckPN2WxBndGtbGQqmrRNbCtj9ai4mZUYx4K3F8y5EaL89eRQMBA)Tx5Zw95zd43(AFD861LxEuiKWaqeVdCYCwPuhNSZAdcakv6WieGFQlW72SiO7HYPzAjRLsHKnUogPoj7CjPAQSgyuUT0oj700kcKlDHcgKSbnbG)q1LnGy6jzNI(2rgfJXybnUTMHAdHKDWXjq7iMWLfCveUobCDs46bGlOptIiVbEIymv)GJ)CSqGiM(oOYOqBEqOnpi0MZaT5mKhyQ(O9gRoJcVP1AjbRLeQws31soyTKy1QVXc6uRNdqtZGD6n8(grEJ7AsziYziwtqMF0BrVEN6b4Thi3PuIMjdeIgxstliAu5K9fouKb77YYfnKXiEJYQ8H03yAOe8(oXGGctZTrA1l7uAiLu5GvV4Mqwd(glzmNxvUoXrn0G6QZnpsz63pNhUEaZx0CV9E8WXTkJKzzZoi5Ivvln1EBtXSkOnOhp0b)wyF6rF9znKtNdc6NrUElyAEe)av87bj4E5OtJ2lqEO(nBB(mhSOIRaLuNidywtBVxvA99v5dqJbl)aUavYNoUcERYbYbwYtwPyVsa)7XZ0jLnc4i)jhyKcWChdlwyoJXEuXyU5ZUVTS6LbZWOzIJZzO6eS02Ap5864jYdcnJ9H5x5LnnhIgR6qPHPX(JX3CtD0XE54MvnxwvAUMWbEpZPcIpmpfMXImSFjvKyuNoJbscJEt5ICluZmfOf7cS2qtjjkpWg1MK6UPS6e6(2BRDoUPKtLYrU9s(V43t33ZZVUT(EA7PFCAFQxpYpbsAwWizenq3YQP6CLHayp8Z4XoMSs1r1awwl0p8GCVnNOx4Kkosc9ExsYER8XSqmNG)M4khVOIP14gk223gSfkmR1Wk3ikWir9GJqtDygHscmSd585Nkl4IYEAI34WWIMY93dZyg8DZTbQvnp1HPDTo16dGw5EcqwlzT38kwDqCH1GyfUmJnYJDEWr7trAYK5YAN8YEQ5lSpbppXDk4P1PHV)dNaQVIHge0(Tr2rTKgQf06zu0mZDcfSKBqyLxExsqX2R1HSlvpCIv2X6nqMAFRpl36tYzekNj651U0owFwkRdVjEW8kkP7aUdRPHN4Dw0WD9Gw7jzSc5mlObfYXAiw949jNnxk7k6RC5EcQvqtz(9o1xQTewRT4xEz5Anyo1npe5mJpzL8oCUT8KKpJezQXswmhahmN2K0CR2lm5mVN40byVtZYDG9WnyZOVHtOaUqZR0VB)J(sen2nVIGzal4EMm8dOdJUMNuE0nhSFGvLiBzcS2IyQkgt3Un9KetAy44KVfmJQmtH1BmmloyDVmUAxxWkc69tZoK6e4O7HXe95Ds7uukNvbNkV32)VsLfY)nYm7I8S9mnMCur7mrVbYFjWdtzNbsKYKNZFswgR5IBGZKjxyst6RX3ohBz)udZwnsnjv6npRr0dCGEJ0FyMRZw2p7tpX7Q7OdKybfowOWDI1n0clpqNDgowcOCAb(8y)vWqHdSO6gkEK(pyK(7YUUmb1JN4hiCKU6hMbB3wJyH7pewTYL4lWbo4cign7(jGPFgsvuv8KVUxYZGJRGoJCX6zkkwMYTvu9q(gWq0XwbOHuPLJfNmdgLLf5fyPSpsMWJOBnAuJda()rYREvi)KXqhiouFk2WqCmXtKFe3QixycQdg6R)bjzPfK8QszCi6w0xNd)PcMzQfYN2KCb96SzUYLnPv5BVjVuVtuVftuoLMEoHJAOSPbUuntI)gC31kkBtqlEM6dAcU792qdNfA3uOyZs2RHezgpGjECaKuzkaUK44jxyme5ew2u4n2PQRNjsAVTd(0BnIg4(jJCkLJfiD6OAMhlC(tmyKJ1zbdLJ1hSMI8XCsW3XsiRnCtwzL1B)AOrOUsXG2mFxdnluSbW2qvp)dERVEx6QEbiSW4NTKogmZNn49wEQh0y5PVfF50uldNnIcOYnEJvOIEDXrKWIDQQKA4YATVf6mGCH5OOKPVIP6FwO136ToELwVEAIUP7LWo1bVBkg7YzCBtq7zfH1H1E(4YoR5V)wbA1yJJxXCYnTy4JCO1pzfG54CSYCrSsCvrNjUxGs3YTCIYuA2azbhgI7egD1gExowbG8mPm(IGyXKzwLJMWUvt50kzMmSgOn3my7ngRrYgO11)G3DDDzkl(Z50eA(03f5ctXQl9rYFppzM1Ew3tXPGBGjEdqb7iI0e6O3I8wWYRT3u7Wuogmi4f6Ba3aMbaxfrldlZukjBlvwtgxCDHWIOTvoTSOawqX5HVogcvjU6Q)zk7gO(PkyGq1Oa6ML6VfdtkVsglAewLb7jrEwVFeYfVrJOfTaIPOsElEpO7dSWsC3Gk5hXFZRG6pbg3cBVYTyN2jA302gIh056RZzH9YV1h4mHFASddzJCwfTTBWfJwIBdZISfYEu(Sex9omfT)Vk8Zgc5aCyEmuqCpqlXDl7EfixT(YOlkxNsCBcmPUjkVS9NP842gqEbIKezfwOLxd8Yn4OBmfVdXY8fYoaNa)J(zNwoFE3mXQaMGIYIAw7AY2nGoEedaOBbrRpyX7SuLNTbE9RbeRncHcomRgUQWxhHNYcT0dhAjcMXR5jllHBfEEtBAcCprga3HKXCCls2cIMcGWqhq)rWYcxhOmkXT5kiVrCyZ6ecqJQY5ZqUGbd3JPrgaody8MHCEvYxsI8LLiFfjYtjr(Qs)COZrrLolMjT63idLAz4sGXVHvQIGlRZRY6wqXRU8u8g2yWSNFbs9fipXu0vEzBuNKThvVBF7W)Vcy5bSJheZcuEs2eAK1Ky98YRxNM6bZURlX1Ok0RFnh)PR6YoZOtuqhZdGKJdq7X3zJzK7e4oOs3yEh3OObIo7fSYNPv917QahO6sODBdUMdPuIRjEhUhy2n5M5jB5YjStmHilZem2CTR9bxrzxTojTa1mZANWdwjyFTRDD2Y91wrVnvIyHcYyR0(BlZX6hyQyrCvphXA1KlmRtqW0xuIZBh(0bmTWh6sg2jRqTI8Sl3YZYz0yUoX9Ht0zJ4CTUgz7utQnTk6iWHkpcyeGLXkOg3hUBAkP9ubIw9qL38MHHP(YzAcoyfd6yGvzIXgPe9ctpcRkbz2bEZeSVcwhwABbck5l2HpG0y0S1HbefmybRGsBl4aspk08BQ(KPKnTco62grbT1PqfbirPgwYWuxofqsV01XkdtVfGP2(2P8yC6wQtMz1JHj7aNxge7gGJwntFv)B3CggefQi9TjFBaQjtBpLfMATGJIHeOoj47oMIrVWIcRoo2rMNRTA22RMUzHvk9q18WFpHv(sJxZt1bUXbWfrG)x8cc8)EVgMiCm15c8)bvjWRPiW)1UOa)uBqG)8ze4)0pRa)mFmHQRruO6v9VxG)HoTq1b(Hcv32FLq1TZlW9c3jU5lcv9ZV3AE(7uyLPFnCBMewzYjfQ()W6e8O2JWkd2LqvjBwG)h)5WDCcU(mW1ti4zTFlHv(MX2Ent(jpFncCn9hlW)hv4s3La)lEUAE9cc8xSBb(V6utHXxOFaQ3QpIe8Nk8xWrKZP9kJzR3Vx0w5l8rDE8dSQ5Wnu3mgnA8IJOT6jhr(by3AUoYZ59r2ZJD9ZI79bOOOrozQobc9mk6yXp50KtroEszTuGpoYANM2)dWinSM9gMeko3Padx58tAcEbdokcQvIHiht2b)yiOUbuYNr1NMEQNK6)k(QgZ5uyapnaSoYhGSw96nHXTaggygxgbCshWKEsDMdlgjL9ZqVogMKcWUkp55QTe3XWLj(W3300(KPBmF06i782ihxICkjJdhiE8irJB)y84r7AWWsKGDWEMCAPGywkLiHQuIH95bqIeJ2StlrA1(gF9hRtknXnDxAQqH7lA)DpigxQDh4lw4esKURqmYbTBAsw9KMW05Oh9m0vxIVkujeNooDtKEHbLDS1hRUsCYmF6jVmQcJbR2OGbNaHpq1xL4Kull8(0vSEsOKYuBAAkwDsxODdogFfIcQoAoaCQcLmZbykJwb5L3sChrLKD8sC6ZJ4L4oUnvkXzOYOj0bUhnkX9V6jllCdzpkZAbsNLOfKPDsVa6eZtLab)l8s(ga(w0v9MPXds(RC7IKqM1l5fyr6sEE15hvp5ISq5j)1qa8KV9VAfg3FrtRCzgfAyjYFRe5ssKx8SK)7li0xYF3cl47TWc(FSGWXjF3fwJxAbbHtE5kHBtMZ19FNf0Y3MWHjFF3XytEfYpG8cKxv9TRv)qNvaa)(KFm0OFY8csM8)ek(1i)9EiVoe9lMIxAkHDfZl5N6osxYLzR0WIU1zqBlKFMRWyi)COcBDRK3qI8M9qYs(hj)cYV0fb)voOE(Sib)Ni)VxyqFL4wHRH6sWhlkYUsCR0vGCL48ujERff5wjicBxbQvIR6Lk4SYeEvUeLsC14ksSYv56ChawjUADf6v5(C14BEpqiwqGwN19GeM7DpynwdJkRH1rxpeleSk9AvZ4QJwh(M1JrjXIxYvii4Bew(q9lXDJLJ6XblWnHGm4xySniH3Y1cHV5YHlaXU4GeUcTDfRcL2361cTfTz6DVIvppkVkkLDBpSnN4mOAZTV8cQOe3okX1a28BBriLU9sC7ej1Uqeslvic2y0OHia3EhmfOdI(RfPC32GXFcB8JFgCgbGMJb9xYg6pdUFt8y3qBWYK67PmeFeVVJAS5fIVVexlUa1xIZhaLVexRUqUlTSqUxIRn3G1lX1oY)L464AavEjU96cjEjU9HWVlXTFqnFNWLFPfG7MIzEzQoURY(wCufWG45vxaw7sC3ncZUe37L6yMnsxpAkuIlafQCjo8Qt4kefHm2M7zbwriV)(SdLBZB(rxpZsjmd)m0YdaxD5L5aOBgaEKbkXfbakxIdMwDWLh44sC96Gl(VBfowWrpNVLf2xeFlI)1b3Rdoye7lG7fXbVmX(6G11bd8vaZ75Rba8UDe57veZBjU(xngBqjotepcONg5zMpyenaerbv6yJSefsbdOHnMhB8iPCHjSex6Y3LhUuGRmvaQvIl7sG8Re3WWvo46(l3y15J0Zfes3amlXfJIwh)Re37)vyS(9zJkkbiAhcU)OW1GRRe3H9dyUpn54o408(hCP7WwyUxUkWL(GJ))lqmXr(BExOs)MgQeVnuP6R3gQ0)RRmuP6)NriLuF7rkPUmqkjDfqkTO8rBJucZd9ACqkTwBKsQ)wksPn8ocPKtsBPKERozU0gUK7C16cU0A(1bCPnVmGlvoJQm8l3Het0BuA5N2uaPKl8vuaiaOj2I3lktPUHlvbb0YfZecWQCx81Ehbxs93DHlvEBswUWLOaLCLJskCjAkhx(Wy(1xk8wMWywgPUdTTxmmpAkrPz(0bLhdu41mwpNCGwIRpjeXef6iMegwAIOzHrQCwyocdSKQDsy822M(41zJS4tCFlncfezYrLyivoSDEbTP1Z598nCPnSqik)jh3b2dMKse1MRKDbG2yz66nU5lE9m0CfKQKCQRe2nvYPuzy3y3LhUWuiMrLIDtLHDtLIDt1b7gR0HHQLtLHDJ1yvvk2n8bhSBo3hSY9VJY9LjlZzp47cr7DHO97Sq0SpQamyAR5DHPDLHPXTKW0QV(F7gMMtwTExyAVlmT)zomTTU1FZct7DaeJRuwKqezLZJKnkne3gIlJb2BMvhYRnHEIOvsnfIr7kJZA(qI(1mElgiUfLwpaHicleTzFoVp2wcT2YQchTZsUzJsZBZgDR)8g6O7OXfbttVUEZnSI4TjoqXKMPmYLu5SldyBFZLg22ZR6c52Yd2M6YdZ2353Gy2weEWl92DKFxAyBs)6b22R7(83cG4wMO2EdPLe0wfWAlXHt93PqTDfpONxbuBRvcrUTyuBl5r20zXG3jW2Sr8v5yn2Wcj8MFhdBZg03v8itsbE9ol7A2y(UIheY))kQTkOjVJ3jhmr3q3yBizJx1JIid0012Xq0g228o8H)lxKB(Lq0B)FX5a0n2TR8z)B(i3wWz(BXB8i7G(rbRDLX25GCZE)iVsjQA(7h5Y)a7T0aGuz7Sx0Fl4C55aLyPrYTuN9kez38qYz)G70THq2St3M9gc6Gc8OQvqaXGa6Edgx6D6C(BiP9oEgYDzl9MEQUOn9C4L(4TX2kvmnFQZFVzT3uwQAOGQ7JbMnsSXmhvl1HZzPsoZsEUXyN2nPfOaDo3F0F5E2)ccPZH)S1t(CGHCs6lm9oo5p0BCD8xY8PON4g83gO9VEzYubXdJQbTMrsxZT37e5mdI)42IOjn2WkJEYcgPnNJ97pkIwMIM5kOrp)5o)Ki5a)hNsyLBWts8mSsjb2FL4g9u9Wbg)ZRZGQwI701C8xRe3dcsYzMiIMMIbEaPlX9VMwDgX0lX9HGAPVotvzdL0U(9aF)btQiBTx6eCUlpSwHtQXoOZr1YpQ0SPO)cyYe(bYzAzknRHIE(rDoX(s61LXqP8VIaAdsI)yXnvi5x4p)7EXFC(TiW9j6cUUxbp(xNWkVCiHv(gNwyLV26f8SIxrOQV)gf4d8hju1l)1fQ6N0HqvZ9ic8cFFHQUucbEdygYX9lu1l9Yc8E)8c8V3QeQ6N(6cv9IRgQtdc8R7BctBEVcvx7yc8FU)m46diW)vUzb(N6IcvVLpOq1771eQovFWCTtjWplmf7lYlW)N)LH7XdJW)rb()u45p3)Ka)3Dwb(38LaNb)s46TaA(qW1OW9HG6FRc8)nwJLjNHPv8IAQ)Fo'
end

function ApplyCellSettings()
	local addon = "Cell"

	if not Utils.RequireAddon(addon) then
		return
	end

	local profileName = Utils.GetProfileName()

	local settings = GetCellSettings()

	if not (Cell and LibStub) then
		print("Required Cell functions or libraries are not available.")
		return
	end

	local Serializer = LibStub:GetLibrary("LibSerialize")
	local LibDeflate = LibStub:GetLibrary("LibDeflate")

	if not (Serializer and LibDeflate) then
		print("Required Cell libraries are not available.")
		return
	end

	-- Parse the import string
	local version, data = string.match(settings, "^!CELL:(%d+):ALL!(.+)$")
	version = tonumber(version)

	if not (version and data) then
		print("Invalid Cell import string.")
		return
	end

	if version < (Cell.MIN_VERSION_IMPORT or 1) then
		-- Use default minimum version if not defined
		print("Incompatible Cell version.")
		return
	end

	-- Decode and decompress the data
	data = LibDeflate:DecodeForPrint(data)
	if not data then
		print("Failed to decode Cell data.")
		return
	end

	local success
	success, data = pcall(LibDeflate.DecompressDeflate, LibDeflate, data)
	if not success then
		print("Failed to decompress Cell data.")
		return
	end

	-- Deserialize the data
	success, data = Serializer:Deserialize(data)
	if not (success and data) then
		print("Failed to deserialize Cell data.")
		return
	end

	-- Merge the imported data into the existing CellDB
	for k, v in pairs(data) do
		CellDB[k] = v
	end

	-- Handle click-castings and layout auto switch for different game versions
	if Cell.isRetail then
		CellDB["clickCastings"] = data["clickCastings"]
		CellDB["layoutAutoSwitch"] = data["layoutAutoSwitch"]
	else
		CellCharacterDB["clickCastings"] = data["clickCastings"]
		CellCharacterDB["layoutAutoSwitch"] = data["layoutAutoSwitch"]
		CellCharacterDB["revise"] = data["revise"]
	end

	-- Reload Cell to apply the changes
	if Cell:Fire("UpdateAppearance") then
		Cell:Fire("UpdateAppearance")
	end

	Utils.LoadComplete(addon, profileName)
end
