.class public final Lio/netty/handler/ssl/SniCompletionEvent;
.super Lio/netty/handler/ssl/SslCompletionEvent;
.source "SourceFile"


# instance fields
.field private final hostname:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/netty/handler/ssl/SslCompletionEvent;-><init>()V

    iput-object p1, p0, Lio/netty/handler/ssl/SniCompletionEvent;->hostname:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 2
    invoke-direct {p0, p2}, Lio/netty/handler/ssl/SslCompletionEvent;-><init>(Ljava/lang/Throwable;)V

    iput-object p1, p0, Lio/netty/handler/ssl/SniCompletionEvent;->hostname:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    .line 3
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lio/netty/handler/ssl/SniCompletionEvent;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public hostname()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/netty/handler/ssl/SniCompletionEvent;->hostname:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lio/netty/handler/ssl/SslCompletionEvent;->cause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SniCompletionEvent(SUCCESS=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lio/netty/handler/ssl/SniCompletionEvent;->hostname:Ljava/lang/String;

    const-string v1, "\'\")"

    invoke-static {v0, p0, v1}, Landroidx/activity/b;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "SniCompletionEvent("

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method
