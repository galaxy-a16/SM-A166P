.class public Lcom/android/server/am/mars/database/FASEntity;
.super Ljava/lang/Object;
.source "FASEntity.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private strCurBatteryUsage:Ljava/lang/String;

.field private strDisableReason:Ljava/lang/String;

.field private strDisableResetTIme:Ljava/lang/String;

.field private strDisableType:Ljava/lang/String;

.field private strExtras:Ljava/lang/String;

.field private strFasReason:Ljava/lang/String;

.field private strLevel:Ljava/lang/String;

.field private strMode:Ljava/lang/String;

.field private strNew:Ljava/lang/String;

.field private strPackageType:Ljava/lang/String;

.field private strPkgName:Ljava/lang/String;

.field private strPreBatteryUsage:Ljava/lang/String;

.field private strResetTime:Ljava/lang/String;

.field private strUid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/am/mars/database/FASEntityBuilder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntityBuilder;->getStrPkgName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntity;->strPkgName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntityBuilder;->getStrUid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntity;->strUid:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntityBuilder;->getStrMode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntity;->strMode:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntityBuilder;->getStrNew()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntity;->strNew:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntityBuilder;->getStrFasReason()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntity;->strFasReason:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntityBuilder;->getStrExtras()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntity;->strExtras:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntityBuilder;->getStrResetTime()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntity;->strResetTime:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntityBuilder;->getStrPackageType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntity;->strPackageType:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntityBuilder;->getStrLevel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntity;->strLevel:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntityBuilder;->getStrDisableType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntity;->strDisableType:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntityBuilder;->getStrDisableResetTime()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntity;->strDisableResetTIme:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntityBuilder;->getStrPreBatteryUsage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntity;->strPreBatteryUsage:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntityBuilder;->getStrDisableReason()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/mars/database/FASEntity;->strDisableReason:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getStrDisableReason()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/mars/database/FASEntity;->strDisableReason:Ljava/lang/String;

    return-object p0
.end method

.method public getStrDisableResetTime()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/mars/database/FASEntity;->strDisableResetTIme:Ljava/lang/String;

    return-object p0
.end method

.method public getStrDisableType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/mars/database/FASEntity;->strDisableType:Ljava/lang/String;

    return-object p0
.end method

.method public getStrExtras()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/mars/database/FASEntity;->strExtras:Ljava/lang/String;

    return-object p0
.end method

.method public getStrFasReason()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/mars/database/FASEntity;->strFasReason:Ljava/lang/String;

    return-object p0
.end method

.method public getStrLevel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/mars/database/FASEntity;->strLevel:Ljava/lang/String;

    return-object p0
.end method

.method public getStrMode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/mars/database/FASEntity;->strMode:Ljava/lang/String;

    return-object p0
.end method

.method public getStrNew()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/mars/database/FASEntity;->strNew:Ljava/lang/String;

    return-object p0
.end method

.method public getStrPackageType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/mars/database/FASEntity;->strPackageType:Ljava/lang/String;

    return-object p0
.end method

.method public getStrPkgName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/mars/database/FASEntity;->strPkgName:Ljava/lang/String;

    return-object p0
.end method

.method public getStrPreBatteryUsage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/mars/database/FASEntity;->strPreBatteryUsage:Ljava/lang/String;

    return-object p0
.end method

.method public getStrResetTime()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/mars/database/FASEntity;->strResetTime:Ljava/lang/String;

    return-object p0
.end method

.method public getStrUid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/mars/database/FASEntity;->strUid:Ljava/lang/String;

    return-object p0
.end method
