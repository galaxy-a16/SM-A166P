.class public Lcom/android/server/DssController$PairConfiguration;
.super Ljava/lang/Object;
.source "DssController.java"


# instance fields
.field public mAppGlobal:Landroid/graphics/Rect;

.field public mAppOverride:Landroid/graphics/Rect;

.field public mBound:Ljava/util/function/Consumer;


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/DssController$PairConfiguration;->mAppGlobal:Landroid/graphics/Rect;

    iput-object p2, p0, Lcom/android/server/DssController$PairConfiguration;->mAppOverride:Landroid/graphics/Rect;

    iput-object p3, p0, Lcom/android/server/DssController$PairConfiguration;->mBound:Ljava/util/function/Consumer;

    return-void
.end method
