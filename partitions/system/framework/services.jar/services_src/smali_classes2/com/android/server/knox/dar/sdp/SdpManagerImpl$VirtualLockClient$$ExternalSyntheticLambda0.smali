.class public final synthetic Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:J

.field public final synthetic f$2:[B

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;J[BI)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iput-wide p2, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient$$ExternalSyntheticLambda0;->f$1:J

    iput-object p4, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient$$ExternalSyntheticLambda0;->f$2:[B

    iput p5, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient$$ExternalSyntheticLambda0;->f$3:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iget-wide v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient$$ExternalSyntheticLambda0;->f$1:J

    iget-object v3, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient$$ExternalSyntheticLambda0;->f$2:[B

    iget v4, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient$$ExternalSyntheticLambda0;->f$3:I

    move-object v5, p1

    check-cast v5, Lcom/android/internal/widget/LockSettingsInternal;

    invoke-static/range {v0 .. v5}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$VirtualLockClient;->$r8$lambda$5TKM9ZhH8Kzl0LAjw29T-J9tFh8(Ljava/lang/String;J[BILcom/android/internal/widget/LockSettingsInternal;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
