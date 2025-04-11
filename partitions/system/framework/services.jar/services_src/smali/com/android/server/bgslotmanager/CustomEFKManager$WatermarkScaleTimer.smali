.class public Lcom/android/server/bgslotmanager/CustomEFKManager$WatermarkScaleTimer;
.super Landroid/os/CountDownTimer;
.source "CustomEFKManager.java"


# instance fields
.field public count:I

.field public reserve:I

.field public final synthetic this$0:Lcom/android/server/bgslotmanager/CustomEFKManager;


# direct methods
.method public constructor <init>(Lcom/android/server/bgslotmanager/CustomEFKManager;JJI)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/android/server/bgslotmanager/CustomEFKManager$WatermarkScaleTimer;->this$0:Lcom/android/server/bgslotmanager/CustomEFKManager;

    .line 168
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    const/4 p1, 0x0

    .line 169
    iput p1, p0, Lcom/android/server/bgslotmanager/CustomEFKManager$WatermarkScaleTimer;->count:I

    .line 170
    iput p6, p0, Lcom/android/server/bgslotmanager/CustomEFKManager$WatermarkScaleTimer;->reserve:I

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .line 206
    iget-object p0, p0, Lcom/android/server/bgslotmanager/CustomEFKManager$WatermarkScaleTimer;->this$0:Lcom/android/server/bgslotmanager/CustomEFKManager;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/bgslotmanager/CustomEFKManager;->-$$Nest$fputisBlockDecEFK(Lcom/android/server/bgslotmanager/CustomEFKManager;Z)V

    return-void
.end method

.method public onTick(J)V
    .locals 4

    .line 174
    iget-object p1, p0, Lcom/android/server/bgslotmanager/CustomEFKManager$WatermarkScaleTimer;->this$0:Lcom/android/server/bgslotmanager/CustomEFKManager;

    invoke-static {p1}, Lcom/android/server/bgslotmanager/CustomEFKManager;->-$$Nest$fgetv_watermark_scale(Lcom/android/server/bgslotmanager/CustomEFKManager;)I

    move-result p1

    .line 175
    iget p2, p0, Lcom/android/server/bgslotmanager/CustomEFKManager$WatermarkScaleTimer;->count:I

    const/4 v0, 0x1

    add-int/2addr p2, v0

    iput p2, p0, Lcom/android/server/bgslotmanager/CustomEFKManager$WatermarkScaleTimer;->count:I

    const/4 v1, 0x2

    if-gt p2, v1, :cond_0

    goto :goto_1

    .line 180
    :cond_0
    iget-object p2, p0, Lcom/android/server/bgslotmanager/CustomEFKManager$WatermarkScaleTimer;->this$0:Lcom/android/server/bgslotmanager/CustomEFKManager;

    invoke-static {p2}, Lcom/android/server/bgslotmanager/CustomEFKManager;->-$$Nest$fgetisStillDecEFK(Lcom/android/server/bgslotmanager/CustomEFKManager;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 181
    invoke-static {}, Lcom/android/server/bgslotmanager/CustomEFKManager;->getWatermarkScaleInfo()I

    move-result p2

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 184
    iget-object v2, p0, Lcom/android/server/bgslotmanager/CustomEFKManager$WatermarkScaleTimer;->this$0:Lcom/android/server/bgslotmanager/CustomEFKManager;

    invoke-static {v2}, Lcom/android/server/bgslotmanager/CustomEFKManager;->-$$Nest$fgetlast_Watermark_EFK(Lcom/android/server/bgslotmanager/CustomEFKManager;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    if-le p1, p2, :cond_2

    .line 186
    iget-object v2, p0, Lcom/android/server/bgslotmanager/CustomEFKManager$WatermarkScaleTimer;->this$0:Lcom/android/server/bgslotmanager/CustomEFKManager;

    invoke-static {v2}, Lcom/android/server/bgslotmanager/CustomEFKManager;->-$$Nest$fgetlast_Watermark_EFK(Lcom/android/server/bgslotmanager/CustomEFKManager;)I

    move-result v2

    iget v3, p0, Lcom/android/server/bgslotmanager/CustomEFKManager$WatermarkScaleTimer;->reserve:I

    if-le v2, v3, :cond_2

    goto :goto_0

    :cond_2
    if-ge p1, p2, :cond_3

    .line 189
    iget-object p1, p0, Lcom/android/server/bgslotmanager/CustomEFKManager$WatermarkScaleTimer;->this$0:Lcom/android/server/bgslotmanager/CustomEFKManager;

    invoke-static {p1}, Lcom/android/server/bgslotmanager/CustomEFKManager;->-$$Nest$fgetlast_Watermark_EFK(Lcom/android/server/bgslotmanager/CustomEFKManager;)I

    move-result p1

    iget v2, p0, Lcom/android/server/bgslotmanager/CustomEFKManager$WatermarkScaleTimer;->reserve:I

    if-ge p1, v2, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :cond_4
    :goto_0
    if-eqz v0, :cond_5

    .line 195
    iget-object p1, p0, Lcom/android/server/bgslotmanager/CustomEFKManager$WatermarkScaleTimer;->this$0:Lcom/android/server/bgslotmanager/CustomEFKManager;

    invoke-static {p1, p2}, Lcom/android/server/bgslotmanager/CustomEFKManager;->-$$Nest$fputv_watermark_scale(Lcom/android/server/bgslotmanager/CustomEFKManager;I)V

    .line 196
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "curWatermarkScale : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/bgslotmanager/CustomEFKManager$WatermarkScaleTimer;->this$0:Lcom/android/server/bgslotmanager/CustomEFKManager;

    invoke-static {p2}, Lcom/android/server/bgslotmanager/CustomEFKManager;->-$$Nest$fgetv_watermark_scale(Lcom/android/server/bgslotmanager/CustomEFKManager;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DynamicHiddenApp_CustomEFKManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object p1, p0, Lcom/android/server/bgslotmanager/CustomEFKManager$WatermarkScaleTimer;->this$0:Lcom/android/server/bgslotmanager/CustomEFKManager;

    iget p2, p0, Lcom/android/server/bgslotmanager/CustomEFKManager$WatermarkScaleTimer;->reserve:I

    invoke-static {p1, p2}, Lcom/android/server/bgslotmanager/CustomEFKManager;->-$$Nest$fputlast_Watermark_EFK(Lcom/android/server/bgslotmanager/CustomEFKManager;I)V

    .line 198
    iget-object p1, p0, Lcom/android/server/bgslotmanager/CustomEFKManager$WatermarkScaleTimer;->this$0:Lcom/android/server/bgslotmanager/CustomEFKManager;

    invoke-static {p1, v1}, Lcom/android/server/bgslotmanager/CustomEFKManager;->-$$Nest$fputisBlockDecEFK(Lcom/android/server/bgslotmanager/CustomEFKManager;Z)V

    .line 199
    invoke-virtual {p0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_5
    :goto_1
    return-void
.end method
