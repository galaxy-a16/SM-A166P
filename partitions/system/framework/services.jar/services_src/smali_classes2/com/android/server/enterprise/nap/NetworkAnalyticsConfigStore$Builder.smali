.class public Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;
.super Ljava/lang/Object;
.source "NetworkAnalyticsConfigStore.java"


# instance fields
.field public adminUid:I

.field public flags:I

.field public flowTypeForProfile:I

.field public intervalValueForProfile:I

.field public jsonString:Ljava/lang/String;

.field public opUserId:I

.field public packageName:Ljava/lang/String;

.field public packageSignature:Ljava/lang/String;

.field public profileName:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

.field public userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;Ljava/lang/String;)V
    .locals 0

    .line 1061
    iput-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1062
    iput-object p2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->profileName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public adminUid(I)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;
    .locals 0

    .line 1096
    iput p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->adminUid:I

    return-object p0
.end method

.method public build()Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;
    .locals 2

    .line 1131
    new-instance v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-direct {v0, v1, p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;-><init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;)V

    return-object v0
.end method

.method public flags(I)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;
    .locals 0

    .line 1103
    iput p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->flags:I

    return-object p0
.end method

.method public flowTypeForProfile(I)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;
    .locals 0

    .line 1117
    iput p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->flowTypeForProfile:I

    return-object p0
.end method

.method public intervalValueForProfile(I)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;
    .locals 0

    .line 1124
    iput p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->intervalValueForProfile:I

    return-object p0
.end method

.method public jsonString(Ljava/lang/String;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;
    .locals 0

    .line 1075
    iput-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->jsonString:Ljava/lang/String;

    return-object p0
.end method

.method public opUserId(I)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;
    .locals 0

    .line 1068
    iput p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->opUserId:I

    return-object p0
.end method

.method public packageName(Ljava/lang/String;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;
    .locals 0

    .line 1082
    iput-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public packageSignature(Ljava/lang/String;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;
    .locals 0

    .line 1089
    iput-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->packageSignature:Ljava/lang/String;

    return-object p0
.end method

.method public userId(I)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;
    .locals 0

    .line 1110
    iput p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->userId:I

    return-object p0
.end method
