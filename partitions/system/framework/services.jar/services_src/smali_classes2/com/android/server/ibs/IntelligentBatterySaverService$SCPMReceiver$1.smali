.class public Lcom/android/server/ibs/IntelligentBatterySaverService$SCPMReceiver$1;
.super Ljava/lang/Object;
.source "IntelligentBatterySaverService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/server/ibs/IntelligentBatterySaverService$SCPMReceiver;


# direct methods
.method public constructor <init>(Lcom/android/server/ibs/IntelligentBatterySaverService$SCPMReceiver;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService$SCPMReceiver$1;->this$1:Lcom/android/server/ibs/IntelligentBatterySaverService$SCPMReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService$SCPMReceiver$1;->this$1:Lcom/android/server/ibs/IntelligentBatterySaverService$SCPMReceiver;

    iget-object v0, v0, Lcom/android/server/ibs/IntelligentBatterySaverService$SCPMReceiver;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverService;

    invoke-static {v0}, Lcom/android/server/ibs/IntelligentBatterySaverService;->-$$Nest$fgetmIBSScpmManager(Lcom/android/server/ibs/IntelligentBatterySaverService;)Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 276
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService$SCPMReceiver$1;->this$1:Lcom/android/server/ibs/IntelligentBatterySaverService$SCPMReceiver;

    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService$SCPMReceiver;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverService;

    invoke-static {p0}, Lcom/android/server/ibs/IntelligentBatterySaverService;->-$$Nest$fgetmIBSScpmManager(Lcom/android/server/ibs/IntelligentBatterySaverService;)Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->registerScpm()V

    :cond_0
    return-void
.end method
