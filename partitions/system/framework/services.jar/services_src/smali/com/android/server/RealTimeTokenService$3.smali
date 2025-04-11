.class public Lcom/android/server/RealTimeTokenService$3;
.super Landroid/content/BroadcastReceiver;
.source "RealTimeTokenService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/RealTimeTokenService;


# direct methods
.method public constructor <init>(Lcom/android/server/RealTimeTokenService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/RealTimeTokenService$3;->this$0:Lcom/android/server/RealTimeTokenService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    const-string p1, "Time has changed"

    const-string p2, "RealTimeTokenService"

    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/RealTimeTokenService$3;->this$0:Lcom/android/server/RealTimeTokenService;

    invoke-static {p1}, Lcom/android/server/RealTimeTokenService;->-$$Nest$mgetSystemTime(Lcom/android/server/RealTimeTokenService;)V

    iget-object p1, p0, Lcom/android/server/RealTimeTokenService$3;->this$0:Lcom/android/server/RealTimeTokenService;

    invoke-static {p1}, Lcom/android/server/RealTimeTokenService;->-$$Nest$fgetbootingTime(Lcom/android/server/RealTimeTokenService;)J

    move-result-wide v0

    iget-object p1, p0, Lcom/android/server/RealTimeTokenService$3;->this$0:Lcom/android/server/RealTimeTokenService;

    invoke-static {p1}, Lcom/android/server/RealTimeTokenService;->-$$Nest$fgetelapsedTime(Lcom/android/server/RealTimeTokenService;)J

    move-result-wide v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUserTime: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/RealTimeTokenService$3;->this$0:Lcom/android/server/RealTimeTokenService;

    invoke-static {v3}, Lcom/android/server/RealTimeTokenService;->-$$Nest$fgetbootingTime(Lcom/android/server/RealTimeTokenService;)J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/RealTimeTokenService$3;->this$0:Lcom/android/server/RealTimeTokenService;

    invoke-static {v2}, Lcom/android/server/RealTimeTokenService;->-$$Nest$fgetelapsedTime(Lcom/android/server/RealTimeTokenService;)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/RealTimeTokenService$3;->this$0:Lcom/android/server/RealTimeTokenService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/RealTimeTokenService;->setUserTime(J)I

    move-result p0

    if-gez p0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setUserTime failed: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
