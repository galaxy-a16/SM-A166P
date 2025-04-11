.class public Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;
.super Ljava/lang/Object;
.source "ProviderGetSession.java"


# instance fields
.field public final mCredentialEntryTypes:Ljava/util/Set;

.field public final mExpectedRemoteEntryProviderService:Landroid/content/ComponentName;

.field public final mUiActionsEntries:Ljava/util/Map;

.field public final mUiAuthenticationEntries:Ljava/util/Map;

.field public final mUiCredentialEntries:Ljava/util/Map;

.field public mUiRemoteEntry:Landroid/util/Pair;

.field public final synthetic this$0:Lcom/android/server/credentials/ProviderGetSession;


# direct methods
.method public static synthetic $r8$lambda$iAgDa5Dx5Bzl3U6Jfux_nf0YVjI(Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;Landroid/service/credentials/Action;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->lambda$addResponseContent$0(Landroid/service/credentials/Action;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ugVrTwQ7kNZ1DnRJ3qbgem1EoUM(Ljava/util/Map$Entry;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->lambda$updatePreviousMostRecentAuthEntry$1(Ljava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUiAuthenticationEntries(Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;)Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mUiAuthenticationEntries:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUiCredentialEntries(Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;)Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mUiCredentialEntries:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUiRemoteEntry(Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;)Landroid/util/Pair;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mUiRemoteEntry:Landroid/util/Pair;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$misEmptyResponse(Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;)Z
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->isEmptyResponse()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misEmptyResponse(Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;Landroid/service/credentials/BeginGetCredentialResponse;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->isEmptyResponse(Landroid/service/credentials/BeginGetCredentialResponse;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/credentials/ProviderGetSession;Landroid/content/ComponentName;)V
    .locals 0

    .line 541
    iput-object p1, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->this$0:Lcom/android/server/credentials/ProviderGetSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 526
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mUiCredentialEntries:Ljava/util/Map;

    .line 529
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mUiActionsEntries:Ljava/util/Map;

    .line 531
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mUiAuthenticationEntries:Ljava/util/Map;

    .line 535
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mCredentialEntryTypes:Ljava/util/Set;

    const/4 p1, 0x0

    .line 538
    iput-object p1, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mUiRemoteEntry:Landroid/util/Pair;

    .line 542
    iput-object p2, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mExpectedRemoteEntryProviderService:Landroid/content/ComponentName;

    return-void
.end method

.method private synthetic lambda$addResponseContent$0(Landroid/service/credentials/Action;)V
    .locals 1

    const/4 v0, 0x0

    .line 551
    invoke-virtual {p0, p1, v0}, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->addAuthenticationAction(Landroid/service/credentials/Action;I)V

    return-void
.end method

.method public static synthetic lambda$updatePreviousMostRecentAuthEntry$1(Ljava/util/Map$Entry;)Z
    .locals 1

    .line 719
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Landroid/credentials/ui/AuthenticationEntry;

    invoke-virtual {p0}, Landroid/credentials/ui/AuthenticationEntry;->getStatus()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public addAction(Landroid/service/credentials/Action;)V
    .locals 5

    .line 575
    invoke-static {}, Lcom/android/server/credentials/ProviderSession;->generateUniqueId()Ljava/lang/String;

    move-result-object v0

    .line 576
    new-instance v1, Landroid/credentials/ui/Entry;

    .line 577
    invoke-virtual {p1}, Landroid/service/credentials/Action;->getSlice()Landroid/app/slice/Slice;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->this$0:Lcom/android/server/credentials/ProviderGetSession;

    .line 578
    invoke-static {v3}, Lcom/android/server/credentials/ProviderGetSession;->-$$Nest$msetUpFillInIntentWithQueryRequest(Lcom/android/server/credentials/ProviderGetSession;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "action_key"

    invoke-direct {v1, v4, v0, v2, v3}, Landroid/credentials/ui/Entry;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/app/slice/Slice;Landroid/content/Intent;)V

    .line 579
    iget-object p0, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mUiActionsEntries:Ljava/util/Map;

    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, p1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addAuthenticationAction(Landroid/service/credentials/Action;I)V
    .locals 8

    .line 584
    invoke-static {}, Lcom/android/server/credentials/ProviderSession;->generateUniqueId()Ljava/lang/String;

    move-result-object v6

    .line 585
    new-instance v7, Landroid/credentials/ui/AuthenticationEntry;

    const-string v1, "authentication_action_key"

    .line 587
    invoke-virtual {p1}, Landroid/service/credentials/Action;->getSlice()Landroid/app/slice/Slice;

    move-result-object v3

    iget-object v0, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->this$0:Lcom/android/server/credentials/ProviderGetSession;

    .line 589
    invoke-static {v0}, Lcom/android/server/credentials/ProviderGetSession;->-$$Nest$msetUpFillInIntentWithQueryRequest(Lcom/android/server/credentials/ProviderGetSession;)Landroid/content/Intent;

    move-result-object v5

    move-object v0, v7

    move-object v2, v6

    move v4, p2

    invoke-direct/range {v0 .. v5}, Landroid/credentials/ui/AuthenticationEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/app/slice/Slice;ILandroid/content/Intent;)V

    .line 590
    iget-object p0, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mUiAuthenticationEntries:Ljava/util/Map;

    new-instance p2, Landroid/util/Pair;

    invoke-direct {p2, p1, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, v6, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addCredentialEntry(Landroid/service/credentials/CredentialEntry;)V
    .locals 5

    .line 565
    invoke-static {}, Lcom/android/server/credentials/ProviderSession;->generateUniqueId()Ljava/lang/String;

    move-result-object v0

    .line 566
    new-instance v1, Landroid/credentials/ui/Entry;

    .line 567
    invoke-virtual {p1}, Landroid/service/credentials/CredentialEntry;->getSlice()Landroid/app/slice/Slice;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->this$0:Lcom/android/server/credentials/ProviderGetSession;

    .line 569
    invoke-virtual {p1}, Landroid/service/credentials/CredentialEntry;->getBeginGetCredentialOptionId()Ljava/lang/String;

    move-result-object v4

    .line 568
    invoke-static {v3, v4}, Lcom/android/server/credentials/ProviderGetSession;->-$$Nest$msetUpFillInIntentWithFinalRequest(Lcom/android/server/credentials/ProviderGetSession;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "credential_key"

    invoke-direct {v1, v4, v0, v2, v3}, Landroid/credentials/ui/Entry;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/app/slice/Slice;Landroid/content/Intent;)V

    .line 570
    iget-object v2, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mUiCredentialEntries:Ljava/util/Map;

    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, p1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    iget-object p0, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mCredentialEntryTypes:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/service/credentials/CredentialEntry;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addResponseContent(Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/service/credentials/RemoteEntry;Z)V
    .locals 1

    .line 548
    new-instance v0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;)V

    invoke-interface {p1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 549
    new-instance p1, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;)V

    invoke-interface {p2, p1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 550
    new-instance p1, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;)V

    invoke-interface {p3, p1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    if-nez p4, :cond_0

    if-nez p5, :cond_1

    .line 560
    :cond_0
    invoke-virtual {p0, p4}, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->setRemoteEntry(Landroid/service/credentials/RemoteEntry;)V

    :cond_1
    return-void
.end method

.method public final copyAuthEntryAndChangeStatus(Landroid/credentials/ui/AuthenticationEntry;Ljava/lang/Integer;)Landroid/credentials/ui/AuthenticationEntry;
    .locals 6

    .line 736
    new-instance p0, Landroid/credentials/ui/AuthenticationEntry;

    const-string v1, "authentication_action_key"

    invoke-virtual {p1}, Landroid/credentials/ui/AuthenticationEntry;->getSubkey()Ljava/lang/String;

    move-result-object v2

    .line 737
    invoke-virtual {p1}, Landroid/credentials/ui/AuthenticationEntry;->getSlice()Landroid/app/slice/Slice;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 738
    invoke-virtual {p1}, Landroid/credentials/ui/AuthenticationEntry;->getFrameworkExtrasIntent()Landroid/content/Intent;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/credentials/ui/AuthenticationEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/app/slice/Slice;ILandroid/content/Intent;)V

    return-object p0
.end method

.method public getActionEntry(Ljava/lang/String;)Landroid/service/credentials/Action;
    .locals 1

    .line 679
    iget-object v0, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mUiActionsEntries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 680
    :cond_0
    iget-object p0, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mUiActionsEntries:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Landroid/service/credentials/Action;

    :goto_0
    return-object p0
.end method

.method public getAuthenticationAction(Ljava/lang/String;)Landroid/service/credentials/Action;
    .locals 1

    .line 673
    iget-object v0, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mUiAuthenticationEntries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 674
    :cond_0
    iget-object p0, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mUiAuthenticationEntries:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Landroid/service/credentials/Action;

    :goto_0
    return-object p0
.end method

.method public getCredentialEntry(Ljava/lang/String;)Landroid/service/credentials/CredentialEntry;
    .locals 1

    .line 691
    iget-object v0, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mUiCredentialEntries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 692
    :cond_0
    iget-object p0, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mUiCredentialEntries:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Landroid/service/credentials/CredentialEntry;

    :goto_0
    return-object p0
.end method

.method public getCredentialEntryTypes()Ljava/util/Set;
    .locals 0

    .line 668
    iget-object p0, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mCredentialEntryTypes:Ljava/util/Set;

    return-object p0
.end method

.method public getRemoteEntry(Ljava/lang/String;)Landroid/service/credentials/RemoteEntry;
    .locals 1

    .line 685
    iget-object v0, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mUiRemoteEntry:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mUiRemoteEntry:Landroid/util/Pair;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz p0, :cond_0

    .line 686
    check-cast p0, Landroid/util/Pair;

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Landroid/service/credentials/RemoteEntry;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final isEmptyResponse()Z
    .locals 1

    .line 656
    iget-object v0, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mUiCredentialEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mUiActionsEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mUiAuthenticationEntries:Ljava/util/Map;

    .line 657
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mUiRemoteEntry:Landroid/util/Pair;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isEmptyResponse(Landroid/service/credentials/BeginGetCredentialResponse;)Z
    .locals 0

    .line 661
    invoke-virtual {p1}, Landroid/service/credentials/BeginGetCredentialResponse;->getCredentialEntries()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/service/credentials/BeginGetCredentialResponse;->getActions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 662
    invoke-virtual {p1}, Landroid/service/credentials/BeginGetCredentialResponse;->getAuthenticationActions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 663
    invoke-virtual {p1}, Landroid/service/credentials/BeginGetCredentialResponse;->getRemoteCredentialEntry()Landroid/service/credentials/RemoteEntry;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final prepareActionEntries()Ljava/util/List;
    .locals 4

    .line 624
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 625
    iget-object v1, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mUiActionsEntries:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 626
    iget-object v3, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mUiActionsEntries:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/credentials/ui/Entry;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final prepareAuthenticationEntries()Ljava/util/List;
    .locals 4

    .line 632
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 633
    iget-object v1, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mUiAuthenticationEntries:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 634
    iget-object v3, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mUiAuthenticationEntries:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/credentials/ui/AuthenticationEntry;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final prepareCredentialEntries()Ljava/util/List;
    .locals 4

    .line 640
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 641
    iget-object v1, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mUiCredentialEntries:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 642
    iget-object v3, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mUiCredentialEntries:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/credentials/ui/Entry;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final prepareRemoteEntry()Landroid/credentials/ui/Entry;
    .locals 1

    .line 648
    iget-object p0, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mUiRemoteEntry:Landroid/util/Pair;

    if-eqz p0, :cond_1

    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez p0, :cond_0

    goto :goto_0

    .line 652
    :cond_0
    check-cast p0, Landroid/util/Pair;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Landroid/credentials/ui/Entry;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public removeAuthenticationAction(Ljava/lang/String;)V
    .locals 0

    .line 594
    iget-object p0, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mUiAuthenticationEntries:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setRemoteEntry(Landroid/service/credentials/RemoteEntry;)V
    .locals 5

    .line 598
    iget-object v0, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->this$0:Lcom/android/server/credentials/ProviderGetSession;

    iget-object v1, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mExpectedRemoteEntryProviderService:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/android/server/credentials/ProviderSession;->enforceRemoteEntryRestrictions(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "ProviderGetSession"

    const-string p1, "Remote entry being dropped as it does not meet the restriction checks."

    .line 599
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 604
    iput-object p1, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mUiRemoteEntry:Landroid/util/Pair;

    return-void

    .line 607
    :cond_1
    invoke-static {}, Lcom/android/server/credentials/ProviderSession;->generateUniqueId()Ljava/lang/String;

    move-result-object v0

    .line 608
    new-instance v1, Landroid/credentials/ui/Entry;

    .line 609
    invoke-virtual {p1}, Landroid/service/credentials/RemoteEntry;->getSlice()Landroid/app/slice/Slice;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->this$0:Lcom/android/server/credentials/ProviderGetSession;

    invoke-static {v3}, Lcom/android/server/credentials/ProviderGetSession;->-$$Nest$msetUpFillInIntentForRemoteEntry(Lcom/android/server/credentials/ProviderGetSession;)Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "remote_entry_key"

    invoke-direct {v1, v4, v0, v2, v3}, Landroid/credentials/ui/Entry;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/app/slice/Slice;Landroid/content/Intent;)V

    .line 610
    new-instance v2, Landroid/util/Pair;

    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, p1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v2, v0, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mUiRemoteEntry:Landroid/util/Pair;

    return-void
.end method

.method public toGetCredentialProviderData()Landroid/credentials/ui/GetCredentialProviderData;
    .locals 2

    .line 615
    new-instance v0, Landroid/credentials/ui/GetCredentialProviderData$Builder;

    iget-object v1, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->this$0:Lcom/android/server/credentials/ProviderGetSession;

    iget-object v1, v1, Lcom/android/server/credentials/ProviderSession;->mComponentName:Landroid/content/ComponentName;

    .line 616
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/credentials/ui/GetCredentialProviderData$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->prepareActionEntries()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/credentials/ui/GetCredentialProviderData$Builder;->setActionChips(Ljava/util/List;)Landroid/credentials/ui/GetCredentialProviderData$Builder;

    move-result-object v0

    .line 617
    invoke-virtual {p0}, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->prepareCredentialEntries()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/credentials/ui/GetCredentialProviderData$Builder;->setCredentialEntries(Ljava/util/List;)Landroid/credentials/ui/GetCredentialProviderData$Builder;

    move-result-object v0

    .line 618
    invoke-virtual {p0}, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->prepareAuthenticationEntries()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/credentials/ui/GetCredentialProviderData$Builder;->setAuthenticationEntries(Ljava/util/List;)Landroid/credentials/ui/GetCredentialProviderData$Builder;

    move-result-object v0

    .line 619
    invoke-virtual {p0}, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->prepareRemoteEntry()Landroid/credentials/ui/Entry;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/credentials/ui/GetCredentialProviderData$Builder;->setRemoteEntry(Landroid/credentials/ui/Entry;)Landroid/credentials/ui/GetCredentialProviderData$Builder;

    move-result-object p0

    .line 620
    invoke-virtual {p0}, Landroid/credentials/ui/GetCredentialProviderData$Builder;->build()Landroid/credentials/ui/GetCredentialProviderData;

    move-result-object p0

    return-object p0
.end method

.method public updateAuthEntryWithNoCredentialsReceived(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    .line 698
    invoke-virtual {p0}, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->updatePreviousMostRecentAuthEntry()V

    return-void

    .line 701
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->updatePreviousMostRecentAuthEntry()V

    .line 702
    invoke-virtual {p0, p1}, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->updateMostRecentAuthEntry(Ljava/lang/String;)V

    return-void
.end method

.method public final updateMostRecentAuthEntry(Ljava/lang/String;)V
    .locals 5

    .line 706
    iget-object v0, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mUiAuthenticationEntries:Ljava/util/Map;

    .line 707
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/credentials/ui/AuthenticationEntry;

    .line 708
    iget-object v1, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mUiAuthenticationEntries:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/service/credentials/Action;

    .line 709
    iget-object v2, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mUiAuthenticationEntries:Ljava/util/Map;

    new-instance v3, Landroid/util/Pair;

    const/4 v4, 0x2

    .line 713
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 711
    invoke-virtual {p0, v0, v4}, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->copyAuthEntryAndChangeStatus(Landroid/credentials/ui/AuthenticationEntry;Ljava/lang/Integer;)Landroid/credentials/ui/AuthenticationEntry;

    move-result-object p0

    invoke-direct {v3, v1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 709
    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final updatePreviousMostRecentAuthEntry()V
    .locals 6

    .line 718
    iget-object v0, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mUiAuthenticationEntries:Ljava/util/Map;

    .line 719
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 721
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    .line 722
    invoke-virtual {v0}, Ljava/util/Optional;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 725
    :cond_0
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 726
    iget-object v2, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mUiAuthenticationEntries:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 727
    iget-object v2, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mUiAuthenticationEntries:Ljava/util/Map;

    new-instance v3, Landroid/util/Pair;

    .line 728
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/service/credentials/Action;

    .line 730
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/credentials/ui/AuthenticationEntry;

    const/4 v5, 0x1

    .line 731
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 729
    invoke-virtual {p0, v0, v5}, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->copyAuthEntryAndChangeStatus(Landroid/credentials/ui/AuthenticationEntry;Ljava/lang/Integer;)Landroid/credentials/ui/AuthenticationEntry;

    move-result-object p0

    invoke-direct {v3, v4, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 727
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
