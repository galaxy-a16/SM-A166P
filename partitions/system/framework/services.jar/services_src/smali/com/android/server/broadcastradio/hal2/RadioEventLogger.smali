.class public final Lcom/android/server/broadcastradio/hal2/RadioEventLogger;
.super Ljava/lang/Object;
.source "RadioEventLogger.java"


# instance fields
.field public final mEventLogger:Landroid/util/LocalLog;

.field public final mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/RadioEventLogger;->mTag:Ljava/lang/String;

    .line 30
    new-instance p1, Landroid/util/LocalLog;

    invoke-direct {p1, p2}, Landroid/util/LocalLog;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/RadioEventLogger;->mEventLogger:Landroid/util/LocalLog;

    return-void
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;)V
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/RadioEventLogger;->mEventLogger:Landroid/util/LocalLog;

    invoke-virtual {p0, p1}, Landroid/util/LocalLog;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public varargs logRadioEvent(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 34
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 35
    iget-object p2, p0, Lcom/android/server/broadcastradio/hal2/RadioEventLogger;->mEventLogger:Landroid/util/LocalLog;

    invoke-virtual {p2, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 36
    iget-object p2, p0, Lcom/android/server/broadcastradio/hal2/RadioEventLogger;->mTag:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-static {p2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 37
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/RadioEventLogger;->mTag:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
