.class public final synthetic Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SecureFileSystemManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(ILjava/io/File;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SecureFileSystemManager$$ExternalSyntheticLambda1;->f$0:I

    iput-object p2, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SecureFileSystemManager$$ExternalSyntheticLambda1;->f$1:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SecureFileSystemManager$$ExternalSyntheticLambda1;->f$0:I

    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SecureFileSystemManager$$ExternalSyntheticLambda1;->f$1:Ljava/io/File;

    check-cast p1, Lcom/android/server/knox/dar/sdp/SdpManagerInternal;

    invoke-static {v0, p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SecureFileSystemManager;->$r8$lambda$We-CszQplBM5fjoo0ezp7jgM1I4(ILjava/io/File;Lcom/android/server/knox/dar/sdp/SdpManagerInternal;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
