.class public final Lcom/android/server/knox/dar/sdp/SDPLog;
.super Ljava/lang/Object;
.source "SDPLog.java"


# static fields
.field public static final DEBUG:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string/jumbo v0, "ro.build.type"

    .line 18
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "userdebug"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "eng"

    .line 19
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/android/server/knox/dar/sdp/SDPLog;->DEBUG:Z

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 25
    invoke-static {v0, p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 32
    invoke-static {p1}, Lcom/android/server/knox/dar/sdp/SDPLogUtil;->makeDebugMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLogger;->enqMessage(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "SDPLog"

    .line 35
    :goto_0
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public static dump(Ljava/io/PrintWriter;)V
    .locals 0

    .line 100
    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLogger;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static e(Ljava/lang/Exception;)V
    .locals 1

    const/4 v0, 0x0

    .line 65
    invoke-static {v0, p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    const/4 v0, 0x0

    .line 69
    invoke-static {v0, p0, p1}, Lcom/android/server/knox/dar/sdp/SDPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 4

    .line 76
    invoke-static {p1, p2}, Lcom/android/server/knox/dar/sdp/SDPLogUtil;->makeErrorMessages(Ljava/lang/String;Ljava/lang/Exception;)[Ljava/lang/String;

    move-result-object v0

    .line 77
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 78
    invoke-static {v3}, Lcom/android/server/knox/dar/sdp/SDPLogger;->enqMessage(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const-string p0, "SDPLog"

    .line 81
    :goto_1
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 2

    .line 44
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1, p0, v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .line 55
    invoke-static {p1, p2}, Lcom/android/server/knox/dar/sdp/SDPLogUtil;->makeInfoMessages(Ljava/lang/String;Ljava/lang/Throwable;)[Ljava/lang/String;

    move-result-object p2

    .line 56
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 57
    invoke-static {v2}, Lcom/android/server/knox/dar/sdp/SDPLogger;->enqMessage(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const-string p0, "SDPLog"

    .line 60
    :goto_1
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public static varargs p([Ljava/lang/Object;)V
    .locals 1

    .line 87
    sget-boolean v0, Lcom/android/server/knox/dar/sdp/SDPLog;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 88
    invoke-static {}, Lcom/android/server/knox/dar/sdp/SDPLogUtil;->getCurrentTime()Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLogUtil;->makePairs([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 90
    invoke-static {v0, p0}, Lcom/android/server/knox/dar/sdp/SDPLogUtil;->makeParamMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLogger;->enqMessage(Ljava/lang/String;)V

    const-string v0, "SDPLog.p"

    .line 93
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
