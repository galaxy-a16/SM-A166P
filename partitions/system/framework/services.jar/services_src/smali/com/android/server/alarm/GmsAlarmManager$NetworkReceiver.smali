.class public Lcom/android/server/alarm/GmsAlarmManager$NetworkReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GmsAlarmManager.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/alarm/GmsAlarmManager;


# direct methods
.method public constructor <init>(Lcom/android/server/alarm/GmsAlarmManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$NetworkReceiver;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/alarm/GmsAlarmManager;Lcom/android/server/alarm/GmsAlarmManager$NetworkReceiver-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/alarm/GmsAlarmManager$NetworkReceiver;-><init>(Lcom/android/server/alarm/GmsAlarmManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "CONNECTIVITY RECEIVER"

    const-string v0, "GmsAlarmManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$NetworkReceiver;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    const-string/jumbo v1, "networkInfo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/net/NetworkInfo;

    invoke-static {p1, p2}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fputmNetworkInfo(Lcom/android/server/alarm/GmsAlarmManager;Landroid/net/NetworkInfo;)V

    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$NetworkReceiver;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetmNetworkInfo(Lcom/android/server/alarm/GmsAlarmManager;)Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$NetworkReceiver;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetmNetworkInfo(Lcom/android/server/alarm/GmsAlarmManager;)Landroid/net/NetworkInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result p1

    const p2, 0x9d08

    invoke-static {p2, p1}, Landroid/util/EventLog;->writeEvent(II)I

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkInfo type = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  -- isConnected = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/alarm/GmsAlarmManager$NetworkReceiver;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {v1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetmNetworkInfo(Lcom/android/server/alarm/GmsAlarmManager;)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, -0x1

    const/4 v0, 0x1

    const/16 v1, 0x11

    if-eq p1, p2, :cond_1

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_1

    if-eq p1, v1, :cond_1

    const/16 p2, 0x10

    if-ne p1, p2, :cond_5

    :cond_1
    if-ne p1, v1, :cond_3

    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$NetworkReceiver;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetmNetworkInfo(Lcom/android/server/alarm/GmsAlarmManager;)Landroid/net/NetworkInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$NetworkReceiver;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetvpnStats(Lcom/android/server/alarm/GmsAlarmManager;)Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    move-result-object p1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->addStartTime(J)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$NetworkReceiver;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetvpnStats(Lcom/android/server/alarm/GmsAlarmManager;)Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    move-result-object p1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->setEndTime(J)V

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$NetworkReceiver;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetmScreenOn(Lcom/android/server/alarm/GmsAlarmManager;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$NetworkReceiver;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetmWaitCheckNetWork(Lcom/android/server/alarm/GmsAlarmManager;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$NetworkReceiver;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetmGoogleNetWork(Lcom/android/server/alarm/GmsAlarmManager;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager$NetworkReceiver;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p0, v0}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fputmScreenOffChange(Lcom/android/server/alarm/GmsAlarmManager;Z)V

    return-void

    :cond_4
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$NetworkReceiver;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$mcancelAlarm(Lcom/android/server/alarm/GmsAlarmManager;)V

    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager$NetworkReceiver;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    const-wide/16 p1, 0x2710

    invoke-static {p0, p1, p2}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$msendCheckNetWorkDelay(Lcom/android/server/alarm/GmsAlarmManager;J)V

    :cond_5
    return-void
.end method
