.class public final synthetic Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Landroid/telecom/Call;

    invoke-static {p1}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->$r8$lambda$r_MWcySFQi8rZYfPzXRVNacsPtc(Landroid/telecom/Call;)Landroid/telecom/Call;

    move-result-object p0

    return-object p0
.end method
