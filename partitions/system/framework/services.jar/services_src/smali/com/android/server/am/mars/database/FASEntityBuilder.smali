.class public Lcom/android/server/am/mars/database/FASEntityBuilder;
.super Ljava/lang/Object;
.source "FASEntityBuilder.java"


# instance fields
.field public strCurBatteryUsage:Ljava/lang/String;

.field public strDisableReason:Ljava/lang/String;

.field public strDisableResetTime:Ljava/lang/String;

.field public strDisableType:Ljava/lang/String;

.field public strExtras:Ljava/lang/String;

.field public strFasReason:Ljava/lang/String;

.field public strLevel:Ljava/lang/String;

.field public strMode:Ljava/lang/String;

.field public strNew:Ljava/lang/String;

.field public strPackageType:Ljava/lang/String;

.field public strPkgName:Ljava/lang/String;

.field public strPreBatteryUsage:Ljava/lang/String;

.field public strResetTime:Ljava/lang/String;

.field public strUid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strPkgName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strUid:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strMode:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strNew:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strFasReason:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strExtras:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strResetTime:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strPackageType:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strLevel:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strDisableType:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strDisableResetTime:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strPreBatteryUsage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strCurBatteryUsage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strDisableReason:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lcom/android/server/am/mars/database/FASEntity;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strPkgName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strUid:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/server/am/mars/database/FASEntity;

    invoke-direct {v0, p0}, Lcom/android/server/am/mars/database/FASEntity;-><init>(Lcom/android/server/am/mars/database/FASEntityBuilder;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getStrDisableReason()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strDisableReason:Ljava/lang/String;

    return-object p0
.end method

.method public getStrDisableResetTime()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strDisableResetTime:Ljava/lang/String;

    return-object p0
.end method

.method public getStrDisableType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strDisableType:Ljava/lang/String;

    return-object p0
.end method

.method public getStrExtras()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strExtras:Ljava/lang/String;

    return-object p0
.end method

.method public getStrFasReason()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strFasReason:Ljava/lang/String;

    return-object p0
.end method

.method public getStrLevel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strLevel:Ljava/lang/String;

    return-object p0
.end method

.method public getStrMode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strMode:Ljava/lang/String;

    return-object p0
.end method

.method public getStrNew()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strNew:Ljava/lang/String;

    return-object p0
.end method

.method public getStrPackageType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strPackageType:Ljava/lang/String;

    return-object p0
.end method

.method public getStrPkgName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strPkgName:Ljava/lang/String;

    return-object p0
.end method

.method public getStrPreBatteryUsage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strPreBatteryUsage:Ljava/lang/String;

    return-object p0
.end method

.method public getStrResetTime()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strResetTime:Ljava/lang/String;

    return-object p0
.end method

.method public getStrUid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strUid:Ljava/lang/String;

    return-object p0
.end method

.method public setStrDisableReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strDisableReason:Ljava/lang/String;

    return-object p0
.end method

.method public setStrDisableResetTime(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strDisableResetTime:Ljava/lang/String;

    return-object p0
.end method

.method public setStrDisableType(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strDisableType:Ljava/lang/String;

    return-object p0
.end method

.method public setStrExtras(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strExtras:Ljava/lang/String;

    return-object p0
.end method

.method public setStrFasReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strFasReason:Ljava/lang/String;

    return-object p0
.end method

.method public setStrLevel(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strLevel:Ljava/lang/String;

    return-object p0
.end method

.method public setStrMode(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strMode:Ljava/lang/String;

    return-object p0
.end method

.method public setStrNew(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strNew:Ljava/lang/String;

    return-object p0
.end method

.method public setStrPackageType(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strPackageType:Ljava/lang/String;

    return-object p0
.end method

.method public setStrPkgName(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strPkgName:Ljava/lang/String;

    return-object p0
.end method

.method public setStrPreBatteryUsage(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strPreBatteryUsage:Ljava/lang/String;

    return-object p0
.end method

.method public setStrResetTime(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strResetTime:Ljava/lang/String;

    return-object p0
.end method

.method public setStrUid(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strUid:Ljava/lang/String;

    return-object p0
.end method
