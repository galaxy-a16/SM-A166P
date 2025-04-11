.class public Lcom/android/server/desktopmode/EmergencyModeBlocker$BroadcastListener;
.super Landroid/content/BroadcastReceiver;
.source "EmergencyModeBlocker.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/EmergencyModeBlocker;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/EmergencyModeBlocker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker$BroadcastListener;->this$0:Lcom/android/server/desktopmode/EmergencyModeBlocker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/desktopmode/EmergencyModeBlocker;Lcom/android/server/desktopmode/EmergencyModeBlocker$BroadcastListener-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/EmergencyModeBlocker$BroadcastListener;-><init>(Lcom/android/server/desktopmode/EmergencyModeBlocker;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string/jumbo p1, "reason"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    sget-boolean p2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/android/server/desktopmode/EmergencyModeBlocker;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EMERGENCY_STATE_CHANGED reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    const/4 p2, 0x4

    if-eq p1, p2, :cond_2

    const/4 p2, 0x5

    if-eq p1, p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker$BroadcastListener;->this$0:Lcom/android/server/desktopmode/EmergencyModeBlocker;

    invoke-static {p1, v0}, Lcom/android/server/desktopmode/EmergencyModeBlocker;->-$$Nest$fputmEnabledInBroadcast(Lcom/android/server/desktopmode/EmergencyModeBlocker;Z)V

    iget-object p0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker$BroadcastListener;->this$0:Lcom/android/server/desktopmode/EmergencyModeBlocker;

    const/16 p1, 0x2710

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/EmergencyModeBlocker;->-$$Nest$mscheduleUpdateBlockerRegistration(Lcom/android/server/desktopmode/EmergencyModeBlocker;I)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker$BroadcastListener;->this$0:Lcom/android/server/desktopmode/EmergencyModeBlocker;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/server/desktopmode/EmergencyModeBlocker;->-$$Nest$fputmEnabledInBroadcast(Lcom/android/server/desktopmode/EmergencyModeBlocker;Z)V

    iget-object p0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker$BroadcastListener;->this$0:Lcom/android/server/desktopmode/EmergencyModeBlocker;

    invoke-static {p0}, Lcom/android/server/desktopmode/EmergencyModeBlocker;->-$$Nest$mscheduleUpdateBlockerRegistration(Lcom/android/server/desktopmode/EmergencyModeBlocker;)V

    :goto_0
    return-void
.end method
