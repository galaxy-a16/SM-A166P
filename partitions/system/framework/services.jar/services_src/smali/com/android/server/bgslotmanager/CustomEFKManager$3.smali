.class public Lcom/android/server/bgslotmanager/CustomEFKManager$3;
.super Landroid/os/CountDownTimer;
.source "CustomEFKManager.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/bgslotmanager/CustomEFKManager;


# direct methods
.method public constructor <init>(Lcom/android/server/bgslotmanager/CustomEFKManager;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/bgslotmanager/CustomEFKManager$3;->this$0:Lcom/android/server/bgslotmanager/CustomEFKManager;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/bgslotmanager/CustomEFKManager$3;->this$0:Lcom/android/server/bgslotmanager/CustomEFKManager;

    invoke-static {p0}, Lcom/android/server/bgslotmanager/CustomEFKManager;->-$$Nest$mrestoreEFKAfterBoot(Lcom/android/server/bgslotmanager/CustomEFKManager;)V

    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
