.class public Lcom/android/server/BatteryService$SetupWizardCompleteReceiver$1;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/server/BatteryService$SetupWizardCompleteReceiver;


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService$SetupWizardCompleteReceiver;)V
    .locals 0

    .line 1968
    iput-object p1, p0, Lcom/android/server/BatteryService$SetupWizardCompleteReceiver$1;->this$1:Lcom/android/server/BatteryService$SetupWizardCompleteReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 1971
    iget-object p0, p0, Lcom/android/server/BatteryService$SetupWizardCompleteReceiver$1;->this$1:Lcom/android/server/BatteryService$SetupWizardCompleteReceiver;

    iget-object p0, p0, Lcom/android/server/BatteryService$SetupWizardCompleteReceiver;->this$0:Lcom/android/server/BatteryService;

    invoke-static {p0}, Lcom/android/server/BatteryService;->-$$Nest$mupdateBatteryDate(Lcom/android/server/BatteryService;)V

    return-void
.end method
