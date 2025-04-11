.class public Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;
.super Ljava/lang/Object;
.source "SemUdfpsHelper.java"


# static fields
.field public static final DEBUG:Z

.field public static final IS_OPTICAL:Z


# instance fields
.field public mBurnInHelper:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$BurnInHelper;

.field public final mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$Injector;

.field public mOpticalImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;

.field public mSemSensorActiveArea:Ljava/lang/String;

.field public mSemSensorAreaHeight:Ljava/lang/String;

.field public mSemSensorAreaWidth:Ljava/lang/String;

.field public mSemSensorDraggingArea:Ljava/lang/String;

.field public mSemSensorImageSize:Ljava/lang/String;

.field public mSemSensorMarginBottom:Ljava/lang/String;

.field public mSemSensorMarginLeft:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 44
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->DEBUG:Z

    .line 48
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    sput-boolean v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->IS_OPTICAL:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$Injector;)V
    .locals 1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "9"

    .line 52
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorAreaWidth:Ljava/lang/String;

    const-string v0, "4"

    .line 53
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorAreaHeight:Ljava/lang/String;

    const-string v0, "13.77"

    .line 54
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorMarginBottom:Ljava/lang/String;

    const-string v0, "0"

    .line 55
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorMarginLeft:Ljava/lang/String;

    const-string v0, "13.00"

    .line 56
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorImageSize:Ljava/lang/String;

    const-string v0, "14.80"

    .line 57
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorActiveArea:Ljava/lang/String;

    const-string v0, "5.00"

    .line 58
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorDraggingArea:Ljava/lang/String;

    .line 96
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$Injector;

    .line 97
    sget-boolean v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->IS_OPTICAL:Z

    if-eqz v0, :cond_0

    .line 98
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;

    invoke-direct {v0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;-><init>(Lcom/android/server/biometrics/sensors/SemBioSysFsProvider;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mOpticalImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;
    .locals 1

    .line 87
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$InstanceHolder;->-$$Nest$sfgetINSTANCE()Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Landroid/util/Pair;)V
    .locals 2

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " FOD : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->getInDisplaySensorArea()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Bundle;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 327
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 329
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->get()Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->toDumpString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 330
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mOpticalImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;

    if-eqz p0, :cond_0

    .line 331
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->dump(Ljava/io/PrintWriter;Landroid/util/Pair;)V

    :cond_0
    return-void
.end method

.method public getFodSensorAreaRect(Landroid/content/Context;ILandroid/graphics/Point;)Landroid/graphics/Rect;
    .locals 6

    const-string v0, "FingerprintService"

    .line 242
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 243
    sget-boolean v2, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    const-string/jumbo v2, "window"

    .line 247
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    if-nez p3, :cond_1

    .line 250
    new-instance p3, Landroid/graphics/Point;

    invoke-direct {p3}, Landroid/graphics/Point;-><init>()V

    .line 251
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    :cond_1
    if-gez p2, :cond_2

    .line 257
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Display;->getRotation()I

    move-result p2

    .line 261
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/high16 v2, 0x41680000    # 14.5f

    const/4 v3, 0x5

    .line 263
    invoke-static {v3, v2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    .line 264
    iget-object v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorMarginBottom:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-static {v3, v4, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    .line 265
    iget-object v5, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorMarginLeft:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-static {v3, v5, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    .line 266
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorAreaHeight:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    invoke-static {v3, p0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p1, v2

    .line 269
    div-int/lit8 v2, p1, 0x2

    float-to-int v3, v5

    sub-int/2addr v2, v3

    float-to-int v3, v4

    float-to-int p0, p0

    const/4 v4, 0x2

    .line 270
    div-int/2addr p0, v4

    add-int/2addr v3, p0

    div-int/lit8 p0, p1, 0x2

    add-int/2addr v3, p0

    if-eqz p2, :cond_6

    const/4 p0, 0x1

    if-eq p2, p0, :cond_5

    if-eq p2, v4, :cond_4

    const/4 p0, 0x3

    if-eq p2, p0, :cond_3

    goto :goto_0

    .line 292
    :cond_3
    iput v3, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, p1

    .line 293
    iput v3, v1, Landroid/graphics/Rect;->left:I

    .line 294
    iget p0, p3, Landroid/graphics/Point;->y:I

    div-int/2addr p0, v4

    sub-int/2addr p0, v2

    iput p0, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr p0, p1

    .line 295
    iput p0, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 286
    :cond_4
    iget p0, p3, Landroid/graphics/Point;->x:I

    div-int/2addr p0, v4

    add-int/2addr p0, v2

    iput p0, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p0, p1

    .line 287
    iput p0, v1, Landroid/graphics/Rect;->left:I

    .line 288
    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, p1

    .line 289
    iput v3, v1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 280
    :cond_5
    iget p0, p3, Landroid/graphics/Point;->x:I

    sub-int/2addr p0, v3

    iput p0, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr p0, p1

    .line 281
    iput p0, v1, Landroid/graphics/Rect;->right:I

    .line 282
    iget p0, p3, Landroid/graphics/Point;->y:I

    div-int/2addr p0, v4

    add-int/2addr p0, v2

    iput p0, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, p1

    .line 283
    iput p0, v1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 274
    :cond_6
    iget p0, p3, Landroid/graphics/Point;->x:I

    div-int/2addr p0, v4

    sub-int/2addr p0, v2

    iput p0, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr p0, p1

    .line 275
    iput p0, v1, Landroid/graphics/Rect;->right:I

    .line 276
    iget p0, p3, Landroid/graphics/Point;->y:I

    sub-int/2addr p0, v3

    iput p0, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr p0, p1

    .line 277
    iput p0, v1, Landroid/graphics/Rect;->bottom:I

    .line 298
    :goto_0
    sget-boolean p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->DEBUG:Z

    if-eqz p0, :cond_7

    .line 299
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getFodSensorAreaRect: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 302
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_1
    return-object v1
.end method

.method public getFodSensorAreaRectForKeyguard(Landroid/content/Context;)Landroid/graphics/Rect;
    .locals 7

    const-string v0, "getFodSensorAreaRectForKeyguard: "

    const-string v1, "FingerprintService"

    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 194
    invoke-virtual {p0, p1, v2, v3}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->getFodSensorAreaRect(Landroid/content/Context;ILandroid/graphics/Point;)Landroid/graphics/Rect;

    move-result-object v2

    :try_start_0
    const-string/jumbo v3, "window"

    .line 196
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 197
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 199
    iget-object v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorActiveArea:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    const/4 v5, 0x5

    invoke-static {v5, v4, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v4, v4

    iget-object v6, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorImageSize:Ljava/lang/String;

    .line 201
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    .line 200
    invoke-static {v5, v6, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    float-to-int v6, v6

    sub-int/2addr v4, v6

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorDraggingArea:Ljava/lang/String;

    .line 203
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    .line 202
    invoke-static {v5, p0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    add-int/2addr v4, p0

    .line 205
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    if-eqz p0, :cond_3

    const/4 p1, 0x1

    if-eq p0, p1, :cond_2

    const/4 p1, 0x2

    if-eq p0, p1, :cond_1

    const/4 p1, 0x3

    if-eq p0, p1, :cond_0

    goto :goto_0

    .line 225
    :cond_0
    iget p0, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr p0, v4

    iput p0, v2, Landroid/graphics/Rect;->right:I

    .line 226
    iget p0, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr p0, v4

    iput p0, v2, Landroid/graphics/Rect;->left:I

    .line 227
    iget p0, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr p0, v4

    iput p0, v2, Landroid/graphics/Rect;->top:I

    .line 228
    iget p0, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p0, v4

    iput p0, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 219
    :cond_1
    iget p0, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr p0, v4

    iput p0, v2, Landroid/graphics/Rect;->right:I

    .line 220
    iget p0, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr p0, v4

    iput p0, v2, Landroid/graphics/Rect;->left:I

    .line 221
    iget p0, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p0, v4

    iput p0, v2, Landroid/graphics/Rect;->bottom:I

    .line 222
    iget p0, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr p0, v4

    iput p0, v2, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 213
    :cond_2
    iget p0, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr p0, v4

    iput p0, v2, Landroid/graphics/Rect;->left:I

    .line 214
    iget p0, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr p0, v4

    iput p0, v2, Landroid/graphics/Rect;->right:I

    .line 215
    iget p0, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p0, v4

    iput p0, v2, Landroid/graphics/Rect;->bottom:I

    .line 216
    iget p0, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr p0, v4

    iput p0, v2, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 207
    :cond_3
    iget p0, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr p0, v4

    iput p0, v2, Landroid/graphics/Rect;->left:I

    .line 208
    iget p0, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr p0, v4

    iput p0, v2, Landroid/graphics/Rect;->right:I

    .line 209
    iget p0, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr p0, v4

    iput p0, v2, Landroid/graphics/Rect;->top:I

    .line 210
    iget p0, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p0, v4

    iput p0, v2, Landroid/graphics/Rect;->bottom:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 232
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :goto_0
    sget-boolean p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->DEBUG:Z

    if-eqz p0, :cond_4

    .line 235
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-object v2
.end method

.method public getInDisplaySensorArea()Landroid/os/Bundle;
    .locals 1

    .line 173
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->getInDisplaySensorArea(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getInDisplaySensorArea(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 7

    .line 178
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorAreaWidth:Ljava/lang/String;

    .line 179
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorAreaHeight:Ljava/lang/String;

    .line 180
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorMarginBottom:Ljava/lang/String;

    .line 181
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorMarginLeft:Ljava/lang/String;

    .line 182
    iget-object v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorImageSize:Ljava/lang/String;

    .line 183
    iget-object v5, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorActiveArea:Ljava/lang/String;

    .line 184
    iget-object v6, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorDraggingArea:Ljava/lang/String;

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sem_area"

    .line 185
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 186
    sget-boolean v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->IS_OPTICAL:Z

    if-eqz v0, :cond_0

    .line 187
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mOpticalImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->getOpticalBrightnessData(Landroid/os/Bundle;)V

    :cond_0
    return-object p1
.end method

.method public getOpticalSensorHelper()Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;
    .locals 0

    .line 323
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mOpticalImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;

    return-object p0
.end method

.method public getSensorAreaMarginFromBottomForFod(Landroid/content/Context;)I
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 308
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->getFodSensorAreaRect(Landroid/content/Context;ILandroid/graphics/Point;)Landroid/graphics/Rect;

    move-result-object p0

    const-string/jumbo v0, "window"

    .line 309
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 310
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 311
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 312
    iget p1, v0, Landroid/graphics/Point;->y:I

    iget p0, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, p0

    return p1
.end method

.method public getSensorIconRandomPos(Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mBurnInHelper:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$BurnInHelper;

    if-nez v0, :cond_0

    .line 317
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$BurnInHelper;

    invoke-direct {v0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$BurnInHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mBurnInHelper:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$BurnInHelper;

    .line 319
    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mBurnInHelper:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$BurnInHelper;

    invoke-static {p0, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$BurnInHelper;->-$$Nest$mgetNextPosition(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$BurnInHelper;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public onBootActivityManagerReady(Landroid/content/Context;)V
    .locals 0

    .line 103
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->readSensorAreaFromSysFs()V

    .line 104
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->setFodRect(Landroid/content/Context;)V

    return-void
.end method

.method public final readSensorAreaFromSysFs()V
    .locals 12

    const-string/jumbo v0, "readSensorConfig: "

    const-string v1, "FingerprintService"

    const-string v2, ", "

    .line 108
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$Injector;

    const-string v4, "/sys/class/fingerprint/fingerprint/position"

    invoke-virtual {v3, v4}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$Injector;->readSysFs(Ljava/lang/String;)[B

    move-result-object v3

    if-eqz v3, :cond_1

    .line 111
    :try_start_0
    new-instance v4, Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v3, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 112
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    .line 113
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 114
    array-length v4, v3

    const/4 v5, 0x5

    const/4 v6, 0x7

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/16 v11, 0x8

    if-lt v4, v11, :cond_0

    .line 115
    aget-object v4, v3, v10

    iput-object v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorMarginBottom:Ljava/lang/String;

    .line 116
    aget-object v4, v3, v9

    iput-object v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorMarginLeft:Ljava/lang/String;

    .line 117
    aget-object v4, v3, v8

    iput-object v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorAreaWidth:Ljava/lang/String;

    .line 118
    aget-object v4, v3, v7

    iput-object v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorAreaHeight:Ljava/lang/String;

    .line 119
    aget-object v4, v3, v6

    iput-object v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorImageSize:Ljava/lang/String;

    .line 120
    aget-object v4, v3, v5

    iput-object v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorActiveArea:Ljava/lang/String;

    .line 121
    aget-object v4, v3, v11

    iput-object v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorDraggingArea:Ljava/lang/String;

    .line 123
    :cond_0
    sget-boolean p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->DEBUG:Z

    if-eqz p0, :cond_1

    .line 124
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v3, v8

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " x "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v3, v7

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v3, v10

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v3, v9

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v3, v6

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v3, v5

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v3, v11

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 128
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public final setFodRect(Landroid/content/Context;)V
    .locals 14

    .line 134
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 136
    :try_start_0
    new-instance v1, Landroid/view/DisplayInfo;

    invoke-direct {v1}, Landroid/view/DisplayInfo;-><init>()V

    .line 137
    const-class v2, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManagerInternal;

    const/4 v3, 0x0

    .line 138
    invoke-virtual {v2, v3, v1}, Landroid/hardware/display/DisplayManagerInternal;->getNonOverrideDisplayInfo(ILandroid/view/DisplayInfo;)V

    .line 140
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v2

    .line 141
    invoke-interface {v2, v3, v0}, Landroid/view/IWindowManager;->getInitialDisplaySize(ILandroid/graphics/Point;)V

    .line 143
    invoke-static {p1}, Lcom/android/server/biometrics/Utils;->isCutoutNotchHidden(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 144
    iget p1, v0, Landroid/graphics/Point;->y:I

    const-string/jumbo v2, "persist.sys.displayinset.top"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    add-int/2addr p1, v2

    iput p1, v0, Landroid/graphics/Point;->y:I

    .line 147
    :cond_0
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 149
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorActiveArea:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iget v4, v1, Landroid/view/DisplayInfo;->physicalXDpi:F

    float-to-double v4, v4

    mul-double/2addr v2, v4

    const-wide v4, 0x3fa42850a0000000L    # 0.03937007859349251

    mul-double/2addr v2, v4

    .line 150
    iget-object v6, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorMarginBottom:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    iget v8, v1, Landroid/view/DisplayInfo;->physicalXDpi:F

    float-to-double v8, v8

    mul-double/2addr v6, v8

    mul-double/2addr v6, v4

    .line 151
    iget-object v8, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorMarginLeft:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    iget v10, v1, Landroid/view/DisplayInfo;->physicalXDpi:F

    float-to-double v10, v10

    mul-double/2addr v8, v10

    mul-double/2addr v8, v4

    .line 152
    iget-object v10, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorAreaHeight:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    iget v1, v1, Landroid/view/DisplayInfo;->physicalXDpi:F

    float-to-double v12, v1

    mul-double/2addr v10, v12

    mul-double/2addr v10, v4

    double-to-int v1, v2

    .line 155
    div-int/lit8 v2, v1, 0x2

    double-to-int v3, v8

    sub-int/2addr v2, v3

    double-to-int v3, v6

    double-to-int v4, v10

    .line 156
    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    div-int/lit8 v4, v1, 0x2

    add-int/2addr v3, v4

    .line 159
    iget v4, v0, Landroid/graphics/Point;->x:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v4, v2

    iput v4, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v1

    .line 160
    iput v4, p1, Landroid/graphics/Rect;->right:I

    .line 161
    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v3

    iput v0, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    .line 162
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 164
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$Injector;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$Injector;->getTspManager()Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->setFodRect(Landroid/graphics/Rect;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "FingerprintService"

    const-string v0, " setFodRect: "

    .line 167
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
