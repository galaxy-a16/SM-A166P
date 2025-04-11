.class public Lcom/android/server/DssController$RunningPackage;
.super Ljava/lang/Object;
.source "DssController.java"


# instance fields
.field public mDssScale:F

.field public mFixedSizeSurfaces:Ljava/util/ArrayList;

.field public mPids:Ljava/util/ArrayList;

.field public final synthetic this$0:Lcom/android/server/DssController;


# direct methods
.method public constructor <init>(Lcom/android/server/DssController;IF)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/android/server/DssController$RunningPackage;->this$0:Lcom/android/server/DssController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/DssController$RunningPackage;->mPids:Ljava/util/ArrayList;

    .line 106
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/DssController$RunningPackage;->mFixedSizeSurfaces:Ljava/util/ArrayList;

    .line 108
    iput p3, p0, Lcom/android/server/DssController$RunningPackage;->mDssScale:F

    return-void
.end method
