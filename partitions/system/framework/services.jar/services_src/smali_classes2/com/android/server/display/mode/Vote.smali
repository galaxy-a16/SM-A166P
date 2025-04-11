.class public final Lcom/android/server/display/mode/Vote;
.super Ljava/lang/Object;
.source "Vote.java"


# instance fields
.field public final appRequestBaseModeRefreshRate:F

.field public final disableRefreshRateSwitching:Z

.field public final height:I

.field public final refreshRateRanges:Landroid/view/SurfaceControl$RefreshRateRanges;

.field public final width:I


# direct methods
.method public constructor <init>(IIFFFFZF)V
    .locals 0

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    iput p1, p0, Lcom/android/server/display/mode/Vote;->width:I

    .line 217
    iput p2, p0, Lcom/android/server/display/mode/Vote;->height:I

    .line 218
    new-instance p1, Landroid/view/SurfaceControl$RefreshRateRanges;

    new-instance p2, Landroid/view/SurfaceControl$RefreshRateRange;

    invoke-direct {p2, p3, p4}, Landroid/view/SurfaceControl$RefreshRateRange;-><init>(FF)V

    new-instance p3, Landroid/view/SurfaceControl$RefreshRateRange;

    invoke-direct {p3, p5, p6}, Landroid/view/SurfaceControl$RefreshRateRange;-><init>(FF)V

    invoke-direct {p1, p2, p3}, Landroid/view/SurfaceControl$RefreshRateRanges;-><init>(Landroid/view/SurfaceControl$RefreshRateRange;Landroid/view/SurfaceControl$RefreshRateRange;)V

    iput-object p1, p0, Lcom/android/server/display/mode/Vote;->refreshRateRanges:Landroid/view/SurfaceControl$RefreshRateRanges;

    .line 221
    iput-boolean p7, p0, Lcom/android/server/display/mode/Vote;->disableRefreshRateSwitching:Z

    .line 222
    iput p8, p0, Lcom/android/server/display/mode/Vote;->appRequestBaseModeRefreshRate:F

    return-void
.end method

.method public static forBaseModeRefreshRate(F)Lcom/android/server/display/mode/Vote;
    .locals 10

    .line 204
    new-instance v9, Lcom/android/server/display/mode/Vote;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/high16 v4, 0x7f800000    # Float.POSITIVE_INFINITY

    const/4 v5, 0x0

    const/high16 v6, 0x7f800000    # Float.POSITIVE_INFINITY

    const/4 v7, 0x0

    move-object v0, v9

    move v8, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/server/display/mode/Vote;-><init>(IIFFFFZF)V

    return-object v9
.end method

.method public static forDisableRefreshRateSwitching()Lcom/android/server/display/mode/Vote;
    .locals 10

    .line 198
    new-instance v9, Lcom/android/server/display/mode/Vote;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/high16 v4, 0x7f800000    # Float.POSITIVE_INFINITY

    const/4 v5, 0x0

    const/high16 v6, 0x7f800000    # Float.POSITIVE_INFINITY

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/server/display/mode/Vote;-><init>(IIFFFFZF)V

    return-object v9
.end method

.method public static forPhysicalRefreshRates(FF)Lcom/android/server/display/mode/Vote;
    .locals 10

    .line 180
    new-instance v9, Lcom/android/server/display/mode/Vote;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v5, 0x0

    const/high16 v6, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpl-float v0, p0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v7, v0

    const/4 v8, 0x0

    move-object v0, v9

    move v3, p0

    move v4, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/server/display/mode/Vote;-><init>(IIFFFFZF)V

    return-object v9
.end method

.method public static forRenderFrameRates(FF)Lcom/android/server/display/mode/Vote;
    .locals 10

    .line 186
    new-instance v9, Lcom/android/server/display/mode/Vote;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/high16 v4, 0x7f800000    # Float.POSITIVE_INFINITY

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    move v5, p0

    move v6, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/server/display/mode/Vote;-><init>(IIFFFFZF)V

    return-object v9
.end method

.method public static forSize(II)Lcom/android/server/display/mode/Vote;
    .locals 10

    .line 192
    new-instance v9, Lcom/android/server/display/mode/Vote;

    const/4 v3, 0x0

    const/high16 v4, 0x7f800000    # Float.POSITIVE_INFINITY

    const/4 v5, 0x0

    const/high16 v6, 0x7f800000    # Float.POSITIVE_INFINITY

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    move v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/server/display/mode/Vote;-><init>(IIFFFFZF)V

    return-object v9
.end method

.method public static priorityToString(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    .line 270
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "PRIORITY_UDFPS"

    return-object p0

    :pswitch_1
    const-string p0, "PRIORITY_PROXIMITY"

    return-object p0

    :pswitch_2
    const-string p0, "PRIORITY_SKIN_TEMPERATURE"

    return-object p0

    :pswitch_3
    const-string p0, "PRIORITY_FLICKER_REFRESH_RATE_SWITCH"

    return-object p0

    :pswitch_4
    const-string p0, "PRIORITY_LOW_POWER_MODE"

    return-object p0

    :pswitch_5
    const-string p0, "PRIORITY_LAYOUT_LIMITED_FRAME_RATE"

    return-object p0

    :pswitch_6
    const-string p0, "PRIORITY_AUTH_OPTIMIZER_RENDER_FRAME_RATE"

    return-object p0

    :pswitch_7
    const-string p0, "PRIORITY_RESOLUTION"

    return-object p0

    :pswitch_8
    const-string p0, "PRIORITY_REFRESH_RATE_MODE"

    return-object p0

    :pswitch_9
    const-string p0, "PRIORITY_USER_SETTING_PEAK_RENDER_FRAME_RATE"

    return-object p0

    :pswitch_a
    const-string p0, "PRIORITY_APP_REQUEST_SIZE"

    return-object p0

    :pswitch_b
    const-string p0, "PRIORITY_APP_REQUEST_BASE_MODE_REFRESH_RATE"

    return-object p0

    :pswitch_c
    const-string p0, "PRIORITY_APP_REQUEST_RENDER_FRAME_RATE_RANGE"

    return-object p0

    :pswitch_d
    const-string p0, "PRIORITY_USER_SETTING_MIN_RENDER_FRAME_RATE"

    return-object p0

    :pswitch_e
    const-string p0, "PRIORITY_HIGH_BRIGHTNESS_MODE"

    return-object p0

    :pswitch_f
    const-string p0, "PRIORITY_FLICKER_REFRESH_RATE"

    return-object p0

    :pswitch_10
    const-string p0, "PRIORITY_REFRESH_RATE_MIN_LIMIT"

    return-object p0

    :pswitch_11
    const-string p0, "PRIORITY_REFRESH_RATE_MAX_LIMIT"

    return-object p0

    :pswitch_12
    const-string p0, "PRIORITY_DEFAULT_REFRESH_RATE"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Vote: {width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/mode/Vote;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/mode/Vote;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", refreshRateRanges: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/mode/Vote;->refreshRateRanges:Landroid/view/SurfaceControl$RefreshRateRanges;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", disableRefreshRateSwitching: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/mode/Vote;->disableRefreshRateSwitching:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", appRequestBaseModeRefreshRate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/display/mode/Vote;->appRequestBaseModeRefreshRate:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
