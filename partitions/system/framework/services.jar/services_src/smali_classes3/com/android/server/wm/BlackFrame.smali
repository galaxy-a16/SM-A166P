.class public Lcom/android/server/wm/BlackFrame;
.super Ljava/lang/Object;
.source "BlackFrame.java"


# instance fields
.field public final mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

.field public final mInnerRect:Landroid/graphics/Rect;

.field public final mOuterRect:Landroid/graphics/Rect;

.field public final mTransactionFactory:Ljava/util/function/Supplier;


# direct methods
.method public constructor <init>(Ljava/util/function/Supplier;Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;Landroid/graphics/Rect;ILcom/android/server/wm/DisplayContent;ZLandroid/view/SurfaceControl;)V
    .locals 15

    move-object v1, p0

    move-object/from16 v0, p3

    move-object/from16 v2, p4

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x4

    new-array v3, v3, [Lcom/android/server/wm/BlackFrame$BlackSurface;

    .line 67
    iput-object v3, v1, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    move-object/from16 v4, p1

    .line 90
    iput-object v4, v1, Lcom/android/server/wm/BlackFrame;->mTransactionFactory:Ljava/util/function/Supplier;

    .line 94
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v4, v1, Lcom/android/server/wm/BlackFrame;->mOuterRect:Landroid/graphics/Rect;

    .line 95
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v4, v1, Lcom/android/server/wm/BlackFrame;->mInnerRect:Landroid/graphics/Rect;

    .line 97
    :try_start_0
    iget v9, v0, Landroid/graphics/Rect;->top:I

    iget v11, v2, Landroid/graphics/Rect;->top:I

    if-ge v9, v11, :cond_0

    .line 98
    new-instance v4, Lcom/android/server/wm/BlackFrame$BlackSurface;

    iget v8, v0, Landroid/graphics/Rect;->left:I

    iget v10, v2, Landroid/graphics/Rect;->right:I

    move-object v5, v4

    move-object/from16 v6, p2

    move/from16 v7, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p8

    invoke-direct/range {v5 .. v13}, Lcom/android/server/wm/BlackFrame$BlackSurface;-><init>(Landroid/view/SurfaceControl$Transaction;IIIIILcom/android/server/wm/DisplayContent;Landroid/view/SurfaceControl;)V

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 101
    :cond_0
    iget v9, v0, Landroid/graphics/Rect;->left:I

    iget v11, v2, Landroid/graphics/Rect;->left:I

    if-ge v9, v11, :cond_1

    .line 102
    new-instance v4, Lcom/android/server/wm/BlackFrame$BlackSurface;

    iget v10, v2, Landroid/graphics/Rect;->top:I

    iget v12, v0, Landroid/graphics/Rect;->bottom:I

    move-object v6, v4

    move-object/from16 v7, p2

    move/from16 v8, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p8

    invoke-direct/range {v6 .. v14}, Lcom/android/server/wm/BlackFrame$BlackSurface;-><init>(Landroid/view/SurfaceControl$Transaction;IIIIILcom/android/server/wm/DisplayContent;Landroid/view/SurfaceControl;)V

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 105
    :cond_1
    iget v12, v0, Landroid/graphics/Rect;->bottom:I

    iget v10, v2, Landroid/graphics/Rect;->bottom:I

    if-le v12, v10, :cond_2

    .line 106
    new-instance v4, Lcom/android/server/wm/BlackFrame$BlackSurface;

    iget v9, v2, Landroid/graphics/Rect;->left:I

    iget v11, v0, Landroid/graphics/Rect;->right:I

    move-object v6, v4

    move-object/from16 v7, p2

    move/from16 v8, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p8

    invoke-direct/range {v6 .. v14}, Lcom/android/server/wm/BlackFrame$BlackSurface;-><init>(Landroid/view/SurfaceControl$Transaction;IIIIILcom/android/server/wm/DisplayContent;Landroid/view/SurfaceControl;)V

    const/4 v5, 0x2

    aput-object v4, v3, v5

    .line 110
    :cond_2
    iget v11, v0, Landroid/graphics/Rect;->right:I

    iget v9, v2, Landroid/graphics/Rect;->right:I

    if-le v11, v9, :cond_3

    .line 111
    new-instance v4, Lcom/android/server/wm/BlackFrame$BlackSurface;

    iget v10, v0, Landroid/graphics/Rect;->top:I

    iget v12, v2, Landroid/graphics/Rect;->bottom:I

    move-object v6, v4

    move-object/from16 v7, p2

    move/from16 v8, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p8

    invoke-direct/range {v6 .. v14}, Lcom/android/server/wm/BlackFrame$BlackSurface;-><init>(Landroid/view/SurfaceControl$Transaction;IIIIILcom/android/server/wm/DisplayContent;Landroid/view/SurfaceControl;)V

    const/4 v0, 0x3

    aput-object v4, v3, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    .line 117
    invoke-virtual {p0}, Lcom/android/server/wm/BlackFrame;->kill()V

    .line 119
    throw v0
.end method


# virtual methods
.method public kill()V
    .locals 7

    .line 123
    iget-object v0, p0, Lcom/android/server/wm/BlackFrame;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    const/4 v1, 0x0

    move v2, v1

    .line 124
    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 125
    aget-object v3, v3, v2

    if-eqz v3, :cond_1

    .line 126
    sget-boolean v4, Lcom/android/server/wm/ProtoLogCache;->WM_SHOW_SURFACE_ALLOC_enabled:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    iget-object v3, v3, Lcom/android/server/wm/BlackFrame$BlackSurface;->surface:Landroid/view/SurfaceControl;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_SHOW_SURFACE_ALLOC:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, 0x30d41fe

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v6, v1, v5, v3}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 127
    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/android/server/wm/BlackFrame$BlackSurface;->surface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v3}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 128
    iget-object v3, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    aput-object v5, v3, v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 131
    :cond_2
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method public printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 3

    .line 72
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Outer: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/BlackFrame;->mOuterRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    const-string v0, " / Inner: "

    .line 73
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/BlackFrame;->mInnerRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 74
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const/4 v0, 0x0

    .line 75
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 76
    aget-object v1, v1, v0

    .line 77
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "#"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, ": "

    .line 78
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/server/wm/BlackFrame$BlackSurface;->surface:Landroid/view/SurfaceControl;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v2, " left="

    .line 79
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/server/wm/BlackFrame$BlackSurface;->left:I

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, " top="

    .line 80
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v1, Lcom/android/server/wm/BlackFrame$BlackSurface;->top:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
