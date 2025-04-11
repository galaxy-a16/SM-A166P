.class public Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;
.super Ljava/lang/Object;
.source "WindowMagnificationManager.java"


# static fields
.field public static final SUM_TIME_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;


# instance fields
.field public final mBounds:Landroid/graphics/Rect;

.field public final mDisplayId:I

.field public mEnabled:Z

.field public mIdOfLastServiceToControl:I

.field public final mMagnificationFrameOffsetRatio:Landroid/graphics/PointF;

.field public mScale:F

.field public final mSourceBounds:Landroid/graphics/Rect;

.field public mTrackingTypingFocusEnabled:Z

.field public volatile mTrackingTypingFocusStartTime:J

.field public volatile mTrackingTypingFocusSumTime:J

.field public final mWindowMagnificationManager:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmEnabled(Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIdOfLastServiceToControl(Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mIdOfLastServiceToControl:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSourceBounds(Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;)Landroid/graphics/Rect;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mSourceBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static constructor <clinit>()V
    .locals 2

    .line 1110
    const-class v0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;

    const-string/jumbo v1, "mTrackingTypingFocusSumTime"

    .line 1111
    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->SUM_TIME_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-void
.end method

.method public constructor <init>(ILcom/android/server/accessibility/magnification/WindowMagnificationManager;)V
    .locals 2

    .line 1115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1094
    iput v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mScale:F

    .line 1099
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mBounds:Landroid/graphics/Rect;

    .line 1101
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mSourceBounds:Landroid/graphics/Rect;

    const/4 v0, -0x1

    .line 1103
    iput v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mIdOfLastServiceToControl:I

    .line 1105
    new-instance v0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mMagnificationFrameOffsetRatio:Landroid/graphics/PointF;

    const/4 v0, 0x1

    .line 1107
    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mTrackingTypingFocusEnabled:Z

    const-wide/16 v0, 0x0

    .line 1109
    iput-wide v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mTrackingTypingFocusStartTime:J

    .line 1113
    iput-wide v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mTrackingTypingFocusSumTime:J

    .line 1116
    iput p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mDisplayId:I

    .line 1117
    iput-object p2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mWindowMagnificationManager:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    return-void
.end method


# virtual methods
.method public disableWindowMagnificationInternal(Landroid/view/accessibility/MagnificationAnimationCallback;)Z
    .locals 3

    .line 1155
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1158
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mWindowMagnificationManager:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    iget v2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mDisplayId:I

    invoke-static {v0, v2, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->-$$Nest$mdisableWindowMagnificationInternal(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;ILandroid/view/accessibility/MagnificationAnimationCallback;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1160
    iput-boolean v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mEnabled:Z

    const/4 p1, -0x1

    .line 1161
    iput p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mIdOfLastServiceToControl:I

    .line 1162
    iput-boolean v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mTrackingTypingFocusEnabled:Z

    .line 1163
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->pauseTrackingTypingFocusRecord()V

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public enableWindowMagnificationInternal(FFFLandroid/view/accessibility/MagnificationAnimationCallback;II)Z
    .locals 8

    .line 1124
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1125
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->getScale()F

    move-result p1

    .line 1127
    :cond_0
    invoke-static {p1}, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->constrainScale(F)F

    move-result p1

    .line 1128
    invoke-virtual {p0, p5}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->setMagnificationFrameOffsetRatioByWindowPosition(I)V

    .line 1129
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mWindowMagnificationManager:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    iget v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mDisplayId:I

    iget-object p5, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mMagnificationFrameOffsetRatio:Landroid/graphics/PointF;

    iget v5, p5, Landroid/graphics/PointF;->x:F

    iget v6, p5, Landroid/graphics/PointF;->y:F

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v7, p4

    invoke-static/range {v0 .. v7}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->-$$Nest$menableWindowMagnificationInternal(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;IFFFFFLandroid/view/accessibility/MagnificationAnimationCallback;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1132
    iput p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mScale:F

    const/4 p1, 0x1

    .line 1133
    iput-boolean p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mEnabled:Z

    .line 1134
    iput p6, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mIdOfLastServiceToControl:I

    return p1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getBounds()Landroid/graphics/Rect;
    .locals 0

    .line 1189
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getCenterX()F
    .locals 0

    .line 1299
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result p0

    return p0
.end method

.method public getCenterY()F
    .locals 0

    .line 1304
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result p0

    return p0
.end method

.method public getIdOfLastServiceToControl()I
    .locals 0

    .line 1202
    iget p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mIdOfLastServiceToControl:I

    return p0
.end method

.method public getScale()F
    .locals 0

    .line 1183
    iget p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mScale:F

    return p0
.end method

.method public isEnabled()Z
    .locals 0

    .line 1277
    iget-boolean p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mEnabled:Z

    return p0
.end method

.method public isPositionInSourceBounds(FF)Z
    .locals 0

    .line 1219
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mSourceBounds:Landroid/graphics/Rect;

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0
.end method

.method public isTrackingTypingFocusEnabled()Z
    .locals 0

    .line 1235
    iget-boolean p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mTrackingTypingFocusEnabled:Z

    return p0
.end method

.method public move(FF)V
    .locals 1

    .line 1282
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mWindowMagnificationManager:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    iget p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mDisplayId:I

    invoke-static {v0, p0, p1, p2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->-$$Nest$mmoveWindowMagnifierInternal(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;IFF)Z

    return-void
.end method

.method public onSourceBoundsChanged(Landroid/graphics/Rect;)V
    .locals 0

    .line 1294
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public pauseTrackingTypingFocusRecord()V
    .locals 6

    .line 1249
    iget-wide v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mTrackingTypingFocusStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1250
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mTrackingTypingFocusStartTime:J

    sub-long/2addr v0, v4

    .line 1252
    sget-object v4, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->SUM_TIME_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v4, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    .line 1253
    iput-wide v2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mTrackingTypingFocusStartTime:J

    :cond_0
    return-void
.end method

.method public pointersInWindow(Landroid/view/MotionEvent;)I
    .locals 6

    .line 1207
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1209
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 1210
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 1211
    iget-object v5, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mBounds:Landroid/graphics/Rect;

    float-to-int v3, v3

    float-to-int v4, v4

    invoke-virtual {v5, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 1287
    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mEnabled:Z

    const/4 v0, -0x1

    .line 1288
    iput v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mIdOfLastServiceToControl:I

    .line 1289
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->setEmpty()V

    return-void
.end method

.method public setMagnificationFrameOffsetRatioByWindowPosition(I)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1147
    :cond_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mMagnificationFrameOffsetRatio:Landroid/graphics/PointF;

    const/high16 p1, -0x40800000    # -1.0f

    invoke-virtual {p0, p1, p1}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    .line 1143
    :cond_1
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mMagnificationFrameOffsetRatio:Landroid/graphics/PointF;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroid/graphics/PointF;->set(FF)V

    :goto_0
    return-void
.end method

.method public setMagnifierLocation(Landroid/graphics/Rect;)V
    .locals 0

    .line 1195
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setScale(F)V
    .locals 3

    .line 1171
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 1174
    :cond_0
    invoke-static {p1}, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->constrainScale(F)F

    move-result v0

    .line 1175
    iget v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mScale:F

    invoke-static {v1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mWindowMagnificationManager:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    iget v2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mDisplayId:I

    .line 1176
    invoke-static {v1, v2, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->-$$Nest$msetScaleInternal(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;IF)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1177
    iput v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mScale:F

    :cond_1
    return-void
.end method

.method public setTrackingTypingFocusEnabled(Z)V
    .locals 2

    .line 1223
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mWindowMagnificationManager:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    iget v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mDisplayId:I

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->isWindowMagnifierEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mWindowMagnificationManager:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    iget v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mDisplayId:I

    .line 1224
    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->isImeVisible(I)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1226
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->startTrackingTypingFocusRecord()V

    .line 1228
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mTrackingTypingFocusEnabled:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 1229
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->stopAndLogTrackingTypingFocusRecordIfNeeded()V

    .line 1231
    :cond_1
    iput-boolean p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mTrackingTypingFocusEnabled:Z

    return-void
.end method

.method public startTrackingTypingFocusRecord()V
    .locals 4

    .line 1239
    iget-wide v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mTrackingTypingFocusStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1240
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mTrackingTypingFocusStartTime:J

    :cond_0
    return-void
.end method

.method public stopAndLogTrackingTypingFocusRecordIfNeeded()V
    .locals 6

    .line 1262
    iget-wide v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mTrackingTypingFocusStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mTrackingTypingFocusSumTime:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 1263
    :cond_0
    iget-wide v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mTrackingTypingFocusStartTime:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 1264
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mTrackingTypingFocusStartTime:J

    sub-long/2addr v0, v4

    goto :goto_0

    :cond_1
    move-wide v0, v2

    .line 1265
    :goto_0
    iget-wide v4, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mTrackingTypingFocusSumTime:J

    add-long/2addr v4, v0

    .line 1270
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mWindowMagnificationManager:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    invoke-virtual {v0, v4, v5}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->logTrackingTypingFocus(J)V

    .line 1271
    iput-wide v2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mTrackingTypingFocusStartTime:J

    .line 1272
    iput-wide v2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mTrackingTypingFocusSumTime:J

    :cond_2
    return-void
.end method
