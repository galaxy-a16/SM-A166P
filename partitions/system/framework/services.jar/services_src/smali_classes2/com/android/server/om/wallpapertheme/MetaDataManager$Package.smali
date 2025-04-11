.class public Lcom/android/server/om/wallpapertheme/MetaDataManager$Package;
.super Ljava/lang/Object;
.source "MetaDataManager.java"


# instance fields
.field public mPackageName:Ljava/lang/String;

.field public mUidList:Ljava/util/List;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmUidList(Lcom/android/server/om/wallpapertheme/MetaDataManager$Package;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager$Package;->mUidList:Ljava/util/List;

    return-object p0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager$Package;->mPackageName:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager$Package;->mUidList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addUid(Lcom/android/server/om/wallpapertheme/MetaDataManager$Uid;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager$Package;->mUidList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager$Package;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getUidList()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager$Package;->mUidList:Ljava/util/List;

    return-object p0
.end method
