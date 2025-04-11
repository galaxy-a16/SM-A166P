.class public final Lcom/android/server/BatteryService$SetupWizardCompleteReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BatteryService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService;)V
    .locals 0

    .line 1964
    iput-object p1, p0, Lcom/android/server/BatteryService$SetupWizardCompleteReceiver;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$SetupWizardCompleteReceiver-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/BatteryService$SetupWizardCompleteReceiver;-><init>(Lcom/android/server/BatteryService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1967
    invoke-static {}, Lcom/android/server/BatteryService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "!@[B_DATE] SetupWizard is completed !!"

    invoke-static {p1, p2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1968
    iget-object p1, p0, Lcom/android/server/BatteryService$SetupWizardCompleteReceiver;->this$0:Lcom/android/server/BatteryService;

    invoke-static {p1}, Lcom/android/server/BatteryService;->-$$Nest$fgetmHandler(Lcom/android/server/BatteryService;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/android/server/BatteryService$SetupWizardCompleteReceiver$1;

    invoke-direct {p2, p0}, Lcom/android/server/BatteryService$SetupWizardCompleteReceiver$1;-><init>(Lcom/android/server/BatteryService$SetupWizardCompleteReceiver;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
