.class public Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;
.super Ljava/lang/Object;
.source "NetworkAnalyticsConfigStore.java"


# instance fields
.field public final adminUid:I

.field public final flags:I

.field public flowTypeForProfile:I

.field public intervalValueForProfile:I

.field public final jsonString:Ljava/lang/String;

.field public final opUserId:I

.field public final packageName:Ljava/lang/String;

.field public final packageSignature:Ljava/lang/String;

.field public final profileName:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

.field public userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;)V
    .locals 0

    .line 909
    iput-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 910
    iget-object p1, p2, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->profileName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->profileName:Ljava/lang/String;

    .line 911
    iget-object p1, p2, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->packageName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->packageName:Ljava/lang/String;

    .line 912
    iget-object p1, p2, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->packageSignature:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->packageSignature:Ljava/lang/String;

    .line 913
    iget-object p1, p2, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->jsonString:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->jsonString:Ljava/lang/String;

    .line 914
    iget p1, p2, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->adminUid:I

    iput p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->adminUid:I

    .line 915
    iget p1, p2, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->userId:I

    iput p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->userId:I

    .line 916
    iget p1, p2, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->opUserId:I

    iput p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->opUserId:I

    .line 917
    iget p1, p2, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->flags:I

    iput p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->flags:I

    .line 918
    iget p1, p2, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->flowTypeForProfile:I

    iput p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->flowTypeForProfile:I

    .line 919
    iget p1, p2, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->intervalValueForProfile:I

    iput p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->intervalValueForProfile:I

    return-void
.end method


# virtual methods
.method public getAdminUid()I
    .locals 0

    .line 964
    iget p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->adminUid:I

    return p0
.end method

.method public getFlags()I
    .locals 0

    .line 1001
    iget p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->flags:I

    return p0
.end method

.method public getFlowTypeForProfile()I
    .locals 0

    .line 1007
    iget p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->flowTypeForProfile:I

    return p0
.end method

.method public getIntervalValueForProfile()I
    .locals 0

    .line 1019
    iget p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->intervalValueForProfile:I

    return p0
.end method

.method public getJsonString()Ljava/lang/String;
    .locals 0

    .line 955
    iget-object p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->jsonString:Ljava/lang/String;

    return-object p0
.end method

.method public getOpUserId()I
    .locals 0

    .line 982
    iget p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->opUserId:I

    return p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 937
    iget-object p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public getPackageSignature()Ljava/lang/String;
    .locals 0

    .line 946
    iget-object p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->packageSignature:Ljava/lang/String;

    return-object p0
.end method

.method public getProfileName()Ljava/lang/String;
    .locals 0

    .line 928
    iget-object p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->profileName:Ljava/lang/String;

    return-object p0
.end method

.method public getUserId()I
    .locals 0

    .line 973
    iget p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->userId:I

    return p0
.end method

.method public setFlowTypeForProfile(I)V
    .locals 0

    .line 1013
    iput p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->flowTypeForProfile:I

    return-void
.end method

.method public setIntervalValueForProfile(I)V
    .locals 0

    .line 1025
    iput p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->intervalValueForProfile:I

    return-void
.end method

.method public setUserId(I)V
    .locals 0

    .line 992
    iput p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->userId:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1031
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "profileName="

    .line 1032
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1033
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->profileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",packageName="

    .line 1034
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1035
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",adminUid="

    .line 1036
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1037
    iget v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->adminUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",flags="

    .line 1038
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1039
    iget v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->flags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",userId="

    .line 1040
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1041
    iget v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",opUserId="

    .line 1042
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1043
    iget p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->opUserId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1045
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
