.class public final synthetic Lcom/android/server/credentials/CredentialManagerService$$ExternalSyntheticLambda3;
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
    check-cast p1, Landroid/credentials/CredentialOption;

    invoke-static {p1}, Lcom/android/server/credentials/CredentialManagerService;->$r8$lambda$YB4hzsa3akKjj9wlq8V9EsrEPQE(Landroid/credentials/CredentialOption;)Ljava/util/HashSet;

    move-result-object p0

    return-object p0
.end method
