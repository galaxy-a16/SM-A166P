.class public Lcom/android/server/bgslotmanager/CustomEFKManager$2;
.super Landroid/os/CountDownTimer;
.source "CustomEFKManager.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/bgslotmanager/CustomEFKManager;


# direct methods
.method public constructor <init>(Lcom/android/server/bgslotmanager/CustomEFKManager;JJ)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/android/server/bgslotmanager/CustomEFKManager$2;->this$0:Lcom/android/server/bgslotmanager/CustomEFKManager;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/android/server/bgslotmanager/CustomEFKManager$2;->this$0:Lcom/android/server/bgslotmanager/CustomEFKManager;

    invoke-static {v0}, Lcom/android/server/bgslotmanager/CustomEFKManager;->-$$Nest$mrestoreWatermarkScaleFactor(Lcom/android/server/bgslotmanager/CustomEFKManager;)V

    .line 118
    iget-object p0, p0, Lcom/android/server/bgslotmanager/CustomEFKManager$2;->this$0:Lcom/android/server/bgslotmanager/CustomEFKManager;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/bgslotmanager/CustomEFKManager;->-$$Nest$fputisStillDecEFK(Lcom/android/server/bgslotmanager/CustomEFKManager;Z)V

    return-void
.end method

.method public onTick(J)V
    .locals 0

    .line 0
    return-void
.end method
