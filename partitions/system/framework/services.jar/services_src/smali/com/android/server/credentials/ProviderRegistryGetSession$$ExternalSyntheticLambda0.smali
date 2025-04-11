.class public final synthetic Lcom/android/server/credentials/ProviderRegistryGetSession$$ExternalSyntheticLambda0;
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

    check-cast p1, Lcom/android/server/credentials/CredentialDescriptionRegistry$FilterResult;

    invoke-static {p1}, Lcom/android/server/credentials/ProviderRegistryGetSession;->$r8$lambda$PUZ9a4i9ep9dFRY8el13azF27yI(Lcom/android/server/credentials/CredentialDescriptionRegistry$FilterResult;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method
