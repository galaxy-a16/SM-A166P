.class public Lcom/android/server/asks/ADPContainer;
.super Ljava/lang/Object;
.source "ADPContainer.java"


# instance fields
.field public mADPPolicy:Ljava/util/ArrayList;

.field public packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/asks/ADPContainer;->packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/asks/ADPContainer;->mADPPolicy:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getADPPolicy()Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/android/server/asks/ADPContainer;->mADPPolicy:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/asks/ADPContainer;->packageName:Ljava/lang/String;

    return-object p0
.end method
