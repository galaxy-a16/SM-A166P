.class public Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;
.super Ljava/lang/Object;
.source "NetworkAnalyticsConfigStore.java"


# instance fields
.field public activationFlowType:I

.field public activationIntervalValue:I

.field public activationState:I

.field public adminUid:I

.field public profile:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

.field public final synthetic this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;I)V
    .locals 0

    .line 823
    iput-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 824
    iput-object p2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->profile:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    .line 825
    iput p3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->adminUid:I

    return-void
.end method


# virtual methods
.method public getActivationFlowType()I
    .locals 0

    .line 869
    iget p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->activationFlowType:I

    return p0
.end method

.method public getActivationIntervalValue()I
    .locals 0

    .line 881
    iget p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->activationIntervalValue:I

    return p0
.end method

.method public getActivationState()I
    .locals 0

    .line 844
    iget p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->activationState:I

    return p0
.end method

.method public getAdminUid()I
    .locals 0

    .line 853
    iget p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->adminUid:I

    return p0
.end method

.method public getProfile()Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;
    .locals 0

    .line 834
    iget-object p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->profile:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    return-object p0
.end method

.method public setActivationFlowType(I)V
    .locals 0

    .line 875
    iput p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->activationFlowType:I

    return-void
.end method

.method public setActivationIntervalValue(I)V
    .locals 0

    .line 887
    iput p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->activationIntervalValue:I

    return-void
.end method

.method public setActivationState(I)V
    .locals 0

    .line 863
    iput p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->activationState:I

    return-void
.end method
