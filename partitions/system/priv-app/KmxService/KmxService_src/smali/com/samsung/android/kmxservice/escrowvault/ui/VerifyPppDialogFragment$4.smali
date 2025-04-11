.class Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment$4;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->handleAttemptLockout(JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;

.field final synthetic val$failureCount:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;JJI)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment$4;->this$0:Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;

    iput p6, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment$4;->val$failureCount:I

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment$4;->this$0:Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->setFailureInfo(IJ)V

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment$4;->this$0:Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->F(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->S(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;I)V

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment$4;->this$0:Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->initDetailMessage()V

    const-string p0, "KMX|VerifyPppDialogFragment"

    const-string v0, "handleAttemptLockout : onFinish"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTick(J)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    long-to-double v0, p1

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    rem-int/lit8 v2, v2, 0x3c

    if-nez v2, :cond_0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-wide/16 v4, 0x3e8

    div-long/2addr p1, v4

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v3, p2

    const-string p1, "too many failed attempts count down, onTick = %d"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "KMX|VerifyPppDialogFragment"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-wide p1, 0x40ed4c0000000000L    # 60000.0

    div-double p1, v0, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    double-to-int p1, p1

    rem-int/lit8 p1, p1, 0x3c

    const-wide v3, 0x414b774000000000L    # 3600000.0

    div-double/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p2, v0

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment$4;->this$0:Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->w(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment$4;->this$0:Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;

    iget v3, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment$4;->val$failureCount:I

    rsub-int/lit8 v3, v3, 0x14

    invoke-static {v1, p2, p1, v2, v3}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->O(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;IIII)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment$4;->this$0:Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;

    invoke-static {p0}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->w(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;)Landroid/widget/TextView;

    move-result-object p0

    const/high16 p1, -0x10000

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
