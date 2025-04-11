.class public abstract Lcom/android/server/net/watchlist/ReportEncoder;
.super Ljava/lang/Object;
.source "ReportEncoder.java"


# direct methods
.method public static encodeWatchlistReport(Lcom/android/server/net/watchlist/WatchlistConfig;[BLjava/util/List;Lcom/android/server/net/watchlist/WatchlistReportDbHelper$AggregatedResult;)[B
    .locals 1

    .line 56
    invoke-virtual {p0}, Lcom/android/server/net/watchlist/WatchlistConfig;->isConfigSecure()Z

    move-result v0

    .line 55
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/net/watchlist/PrivacyUtils;->createDpEncodedReportMap(Z[BLjava/util/List;Lcom/android/server/net/watchlist/WatchlistReportDbHelper$AggregatedResult;)Ljava/util/Map;

    move-result-object p1

    .line 57
    invoke-static {p0, p1}, Lcom/android/server/net/watchlist/ReportEncoder;->serializeReport(Lcom/android/server/net/watchlist/WatchlistConfig;Ljava/util/Map;)[B

    move-result-object p0

    return-object p0
.end method

.method public static serializeReport(Lcom/android/server/net/watchlist/WatchlistConfig;Ljava/util/Map;)[B
    .locals 7

    .line 72
    invoke-virtual {p0}, Lcom/android/server/net/watchlist/WatchlistConfig;->getWatchlistConfigHash()[B

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "ReportEncoder"

    if-nez p0, :cond_0

    const-string p0, "No watchlist hash"

    .line 74
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 77
    :cond_0
    array-length v2, p0

    const/16 v3, 0x20

    if-eq v2, v3, :cond_1

    const-string p0, "Unexpected hash length"

    .line 78
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 81
    :cond_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 82
    new-instance v1, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v1, v0}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    const-wide v2, 0x10500000001L

    const/4 v4, 0x1

    .line 85
    invoke-virtual {v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10900000002L

    .line 87
    invoke-static {p0}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object p0

    .line 86
    invoke-virtual {v1, v2, v3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 90
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 91
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 92
    invoke-static {v2}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    .line 93
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-wide v3, 0x20b00000003L

    .line 94
    invoke-virtual {v1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    const-wide v5, 0x10900000001L

    .line 95
    invoke-virtual {v1, v5, v6, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v5, 0x10800000002L

    .line 96
    invoke-virtual {v1, v5, v6, p1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 97
    invoke-virtual {v1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_0

    .line 99
    :cond_2
    invoke-virtual {v1}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 100
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method
