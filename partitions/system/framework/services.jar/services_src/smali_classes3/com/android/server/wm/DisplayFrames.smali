.class public Lcom/android/server/wm/DisplayFrames;
.super Ljava/lang/Object;
.source "DisplayFrames.java"


# static fields
.field public static final ID_DISPLAY_CUTOUT_BOTTOM:I

.field public static final ID_DISPLAY_CUTOUT_LEFT:I

.field public static final ID_DISPLAY_CUTOUT_RIGHT:I

.field public static final ID_DISPLAY_CUTOUT_TOP:I


# instance fields
.field public final mDisplayCutoutSafe:Landroid/graphics/Rect;

.field public mHeight:I

.field public final mInsetsState:Landroid/view/InsetsState;

.field public mRotation:I

.field public mUdcCutoutPolicy:Lcom/android/server/wm/UdcCutoutPolicy;

.field public final mUnrestricted:Landroid/graphics/Rect;

.field public mWidth:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Landroid/view/InsetsSource;->createId(Ljava/lang/Object;II)I

    move-result v0

    sput v0, Lcom/android/server/wm/DisplayFrames;->ID_DISPLAY_CUTOUT_LEFT:I

    const/4 v0, 0x1

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v1

    invoke-static {v2, v0, v1}, Landroid/view/InsetsSource;->createId(Ljava/lang/Object;II)I

    move-result v0

    sput v0, Lcom/android/server/wm/DisplayFrames;->ID_DISPLAY_CUTOUT_TOP:I

    const/4 v0, 0x2

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v1

    invoke-static {v2, v0, v1}, Landroid/view/InsetsSource;->createId(Ljava/lang/Object;II)I

    move-result v0

    sput v0, Lcom/android/server/wm/DisplayFrames;->ID_DISPLAY_CUTOUT_RIGHT:I

    const/4 v0, 0x3

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v1

    invoke-static {v2, v0, v1}, Landroid/view/InsetsSource;->createId(Ljava/lang/Object;II)I

    move-result v0

    sput v0, Lcom/android/server/wm/DisplayFrames;->ID_DISPLAY_CUTOUT_BOTTOM:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mInsetsState:Landroid/view/InsetsState;

    return-void
.end method

.method public constructor <init>(Landroid/view/InsetsState;Landroid/view/DisplayInfo;Landroid/view/DisplayCutout;Landroid/view/RoundedCorners;Landroid/view/PrivacyIndicatorBounds;Landroid/view/DisplayShape;)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/wm/DisplayFrames;-><init>(Landroid/view/InsetsState;Landroid/view/DisplayInfo;Landroid/view/DisplayCutout;Landroid/view/RoundedCorners;Landroid/view/PrivacyIndicatorBounds;Landroid/view/DisplayShape;Lcom/android/server/wm/UdcCutoutPolicy;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/InsetsState;Landroid/view/DisplayInfo;Landroid/view/DisplayCutout;Landroid/view/RoundedCorners;Landroid/view/PrivacyIndicatorBounds;Landroid/view/DisplayShape;Lcom/android/server/wm/UdcCutoutPolicy;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iput-object p7, p0, Lcom/android/server/wm/DisplayFrames;->mUdcCutoutPolicy:Lcom/android/server/wm/UdcCutoutPolicy;

    iput-object p1, p0, Lcom/android/server/wm/DisplayFrames;->mInsetsState:Landroid/view/InsetsState;

    iget v2, p2, Landroid/view/DisplayInfo;->rotation:I

    iget v3, p2, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v4, p2, Landroid/view/DisplayInfo;->logicalHeight:I

    move-object v0, p0

    move v1, v2

    move v2, v3

    move v3, v4

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/DisplayFrames;->update(IIILandroid/view/DisplayCutout;Landroid/view/RoundedCorners;Landroid/view/PrivacyIndicatorBounds;Landroid/view/DisplayShape;)Z

    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "DisplayFrames w="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/wm/DisplayFrames;->mWidth:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " h="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/wm/DisplayFrames;->mHeight:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " r="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 0

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public update(IIILandroid/view/DisplayCutout;Landroid/view/RoundedCorners;Landroid/view/PrivacyIndicatorBounds;Landroid/view/DisplayShape;)Z
    .locals 17

    move-object/from16 v0, p0

    move/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    iget-object v15, v0, Lcom/android/server/wm/DisplayFrames;->mInsetsState:Landroid/view/InsetsState;

    iget-object v8, v0, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget-object v1, v0, Lcom/android/server/wm/DisplayFrames;->mUdcCutoutPolicy:Lcom/android/server/wm/UdcCutoutPolicy;

    if-eqz v1, :cond_0

    move-object v2, v15

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v16, v8

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/wm/UdcCutoutPolicy;->onDisplayInfoUpdated(Landroid/view/InsetsState;IIILandroid/view/RoundedCorners;Landroid/view/PrivacyIndicatorBounds;Landroid/view/DisplayShape;)V

    goto :goto_0

    :cond_0
    move-object/from16 v16, v8

    :goto_0
    iget v1, v0, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    const/4 v2, 0x0

    if-ne v1, v9, :cond_1

    iget v1, v0, Lcom/android/server/wm/DisplayFrames;->mWidth:I

    if-ne v1, v10, :cond_1

    iget v1, v0, Lcom/android/server/wm/DisplayFrames;->mHeight:I

    if-ne v1, v11, :cond_1

    iget-object v1, v0, Lcom/android/server/wm/DisplayFrames;->mInsetsState:Landroid/view/InsetsState;

    invoke-virtual {v1}, Landroid/view/InsetsState;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/view/DisplayCutout;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v15}, Landroid/view/InsetsState;->getRoundedCorners()Landroid/view/RoundedCorners;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/view/RoundedCorners;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v15}, Landroid/view/InsetsState;->getPrivacyIndicatorBounds()Landroid/view/PrivacyIndicatorBounds;

    move-result-object v1

    invoke-virtual {v1, v14}, Landroid/view/PrivacyIndicatorBounds;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    iput v9, v0, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    iput v10, v0, Lcom/android/server/wm/DisplayFrames;->mWidth:I

    iput v11, v0, Lcom/android/server/wm/DisplayFrames;->mHeight:I

    iget-object v0, v0, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v0, v2, v2, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v15, v0}, Landroid/view/InsetsState;->setDisplayFrame(Landroid/graphics/Rect;)V

    invoke-virtual {v15, v12}, Landroid/view/InsetsState;->setDisplayCutout(Landroid/view/DisplayCutout;)V

    invoke-virtual {v15, v13}, Landroid/view/InsetsState;->setRoundedCorners(Landroid/view/RoundedCorners;)V

    invoke-virtual {v15, v14}, Landroid/view/InsetsState;->setPrivacyIndicatorBounds(Landroid/view/PrivacyIndicatorBounds;)V

    move-object/from16 v1, p7

    invoke-virtual {v15, v1}, Landroid/view/InsetsState;->setDisplayShape(Landroid/view/DisplayShape;)V

    move-object/from16 v1, v16

    invoke-virtual {v15, v1}, Landroid/view/InsetsState;->getDisplayCutoutSafe(Landroid/graphics/Rect;)V

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->left:I

    if-le v2, v3, :cond_2

    sget v2, Lcom/android/server/wm/DisplayFrames;->ID_DISPLAY_CUTOUT_LEFT:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v3

    invoke-virtual {v15, v2, v3}, Landroid/view/InsetsState;->getOrCreateSource(II)Landroid/view/InsetsSource;

    move-result-object v2

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/InsetsSource;->setFrame(IIII)Landroid/view/InsetsSource;

    goto :goto_1

    :cond_2
    sget v2, Lcom/android/server/wm/DisplayFrames;->ID_DISPLAY_CUTOUT_LEFT:I

    invoke-virtual {v15, v2}, Landroid/view/InsetsState;->removeSource(I)V

    :goto_1
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    if-le v2, v3, :cond_3

    sget v2, Lcom/android/server/wm/DisplayFrames;->ID_DISPLAY_CUTOUT_TOP:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v3

    invoke-virtual {v15, v2, v3}, Landroid/view/InsetsState;->getOrCreateSource(II)Landroid/view/InsetsSource;

    move-result-object v2

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/graphics/Rect;->right:I

    iget v6, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/InsetsSource;->setFrame(IIII)Landroid/view/InsetsSource;

    goto :goto_2

    :cond_3
    sget v2, Lcom/android/server/wm/DisplayFrames;->ID_DISPLAY_CUTOUT_TOP:I

    invoke-virtual {v15, v2}, Landroid/view/InsetsState;->removeSource(I)V

    :goto_2
    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    if-ge v2, v3, :cond_4

    sget v2, Lcom/android/server/wm/DisplayFrames;->ID_DISPLAY_CUTOUT_RIGHT:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v3

    invoke-virtual {v15, v2, v3}, Landroid/view/InsetsState;->getOrCreateSource(II)Landroid/view/InsetsSource;

    move-result-object v2

    iget v3, v1, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/graphics/Rect;->right:I

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/InsetsSource;->setFrame(IIII)Landroid/view/InsetsSource;

    goto :goto_3

    :cond_4
    sget v2, Lcom/android/server/wm/DisplayFrames;->ID_DISPLAY_CUTOUT_RIGHT:I

    invoke-virtual {v15, v2}, Landroid/view/InsetsState;->removeSource(I)V

    :goto_3
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    if-ge v2, v3, :cond_5

    sget v2, Lcom/android/server/wm/DisplayFrames;->ID_DISPLAY_CUTOUT_BOTTOM:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v3

    invoke-virtual {v15, v2, v3}, Landroid/view/InsetsState;->getOrCreateSource(II)Landroid/view/InsetsSource;

    move-result-object v2

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3, v1, v4, v0}, Landroid/view/InsetsSource;->setFrame(IIII)Landroid/view/InsetsSource;

    goto :goto_4

    :cond_5
    sget v0, Lcom/android/server/wm/DisplayFrames;->ID_DISPLAY_CUTOUT_BOTTOM:I

    invoke-virtual {v15, v0}, Landroid/view/InsetsState;->removeSource(I)V

    :goto_4
    const/4 v0, 0x1

    return v0
.end method
