.class public Lcom/android/server/DssController$DssAppDate;
.super Ljava/lang/Object;
.source "DssController.java"


# instance fields
.field public mCpuLevel:I

.field public mGameSiopLevel:I

.field public mGpuLevel:I

.field public mScale:F

.field public final synthetic this$0:Lcom/android/server/DssController;


# direct methods
.method public constructor <init>(Lcom/android/server/DssController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/DssController$DssAppDate;->this$0:Lcom/android/server/DssController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/android/server/DssController$DssAppDate;->mScale:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/DssController$DssAppDate;->mGameSiopLevel:I

    iput p1, p0, Lcom/android/server/DssController$DssAppDate;->mCpuLevel:I

    iput p1, p0, Lcom/android/server/DssController$DssAppDate;->mGpuLevel:I

    return-void
.end method


# virtual methods
.method public addPackage(F)V
    .locals 0

    iput p1, p0, Lcom/android/server/DssController$DssAppDate;->mScale:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/DssController$DssAppDate;->mGameSiopLevel:I

    iput p1, p0, Lcom/android/server/DssController$DssAppDate;->mCpuLevel:I

    iput p1, p0, Lcom/android/server/DssController$DssAppDate;->mGpuLevel:I

    return-void
.end method

.method public addPackage(FI)V
    .locals 0

    iput p1, p0, Lcom/android/server/DssController$DssAppDate;->mScale:F

    iput p2, p0, Lcom/android/server/DssController$DssAppDate;->mGameSiopLevel:I

    return-void
.end method

.method public addPackage(FLjava/lang/String;)V
    .locals 0

    iput p1, p0, Lcom/android/server/DssController$DssAppDate;->mScale:F

    const-string p1, ","

    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aget-object p2, p1, p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/android/server/DssController$DssAppDate;->mCpuLevel:I

    const/4 p2, 0x1

    aget-object p1, p1, p2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/DssController$DssAppDate;->mGpuLevel:I

    return-void
.end method
