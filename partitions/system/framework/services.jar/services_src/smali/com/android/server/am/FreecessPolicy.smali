.class public Lcom/android/server/am/FreecessPolicy;
.super Ljava/lang/Object;
.source "FreecessPolicy.java"


# instance fields
.field public googleFreezeExemptionList:Ljava/util/ArrayList;

.field public googleFreezeTime:I

.field public lessUnfreezeEnabled:Z

.field public masterSwitch:Z

.field public quickFreezeCheckTime:I

.field public quickFreezeEnabled:Z

.field public quickFreezeIntervalTime:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/FreecessPolicy;->googleFreezeExemptionList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addGoogleFreezeExemptionPackage(Ljava/lang/String;)V
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/server/am/FreecessPolicy;->googleFreezeExemptionList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getGoogleFreezeExemptionList()Ljava/util/ArrayList;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/server/am/FreecessPolicy;->googleFreezeExemptionList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getGoogleFreezeTime()I
    .locals 0

    .line 55
    iget p0, p0, Lcom/android/server/am/FreecessPolicy;->googleFreezeTime:I

    return p0
.end method

.method public getLessUnfreezeEnabled()Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lcom/android/server/am/FreecessPolicy;->lessUnfreezeEnabled:Z

    return p0
.end method

.method public getMasterSwitch()Z
    .locals 0

    .line 15
    iget-boolean p0, p0, Lcom/android/server/am/FreecessPolicy;->masterSwitch:Z

    return p0
.end method

.method public getQuickFreezeCheckTime()I
    .locals 0

    .line 39
    iget p0, p0, Lcom/android/server/am/FreecessPolicy;->quickFreezeCheckTime:I

    return p0
.end method

.method public getQuickFreezeEnabled()Z
    .locals 0

    .line 23
    iget-boolean p0, p0, Lcom/android/server/am/FreecessPolicy;->quickFreezeEnabled:Z

    return p0
.end method

.method public getQuickFreezeIntervalTime()I
    .locals 0

    .line 47
    iget p0, p0, Lcom/android/server/am/FreecessPolicy;->quickFreezeCheckTime:I

    return p0
.end method

.method public setGoogleFreezeTime(I)V
    .locals 0

    .line 59
    iput p1, p0, Lcom/android/server/am/FreecessPolicy;->googleFreezeTime:I

    return-void
.end method

.method public setLessUnfreezeEnabled(Z)V
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/android/server/am/FreecessPolicy;->lessUnfreezeEnabled:Z

    return-void
.end method

.method public setMasterSwitch(Z)V
    .locals 0

    .line 19
    iput-boolean p1, p0, Lcom/android/server/am/FreecessPolicy;->masterSwitch:Z

    return-void
.end method

.method public setQuickFreezeCheckTime(I)V
    .locals 0

    .line 43
    iput p1, p0, Lcom/android/server/am/FreecessPolicy;->quickFreezeCheckTime:I

    return-void
.end method

.method public setQuickFreezeEnabled(Z)V
    .locals 0

    .line 27
    iput-boolean p1, p0, Lcom/android/server/am/FreecessPolicy;->quickFreezeEnabled:Z

    return-void
.end method

.method public setQuickFreezeIntervalTime(I)V
    .locals 0

    .line 51
    iput p1, p0, Lcom/android/server/am/FreecessPolicy;->quickFreezeIntervalTime:I

    return-void
.end method
