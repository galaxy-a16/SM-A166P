.class public final Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager$Member;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Member"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TrustChain::MemberManager::Member"


# instance fields
.field private fabricId:Ljava/lang/String;

.field private final memberId:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager$Member;->this$0:Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager$Member;->fabricId:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager$Member;->memberId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public delete()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    .locals 5

    const-string v0, "delete"

    const-string v1, "TrustChain::MemberManager::Member"

    :try_start_0
    const-string v2, "Member delete in"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager$Member;->this$0:Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;

    invoke-static {v2}, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->e(Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;)Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isFailed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager$Member;->this$0:Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;

    invoke-static {v2}, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->c(Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;)Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager$Member;->this$0:Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;

    invoke-static {v3}, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->d(Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;)Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;->ensureAuthToken(Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;Z)Landroid/util/Pair;

    move-result-object v2

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    invoke-static {v3}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isFailed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object p0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    return-object p0

    :cond_1
    invoke-static {}, Lcom/samsung/android/kmxservice/trustchain/client/MembershipClient;->getInstance()Lcom/samsung/android/kmxservice/trustchain/client/MembershipClient;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager$Member;->fabricId:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager$Member;->memberId:Ljava/lang/String;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v4, p0, v2}, Lcom/samsung/android/kmxservice/trustchain/client/MembershipClient;->deleteMember(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/kmxservice/trustchain/client/data/Response;

    move-result-object p0

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;->NO_CONTENT_OR_NOT_FOUND:Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;

    invoke-virtual {p0, v2, v1, v0}, Lcom/samsung/android/kmxservice/trustchain/client/data/Response;->isSuccess(Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->SUCCESS:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_MEM_SERVER:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0, v0, v1}, Lcom/samsung/android/kmxservice/trustchain/utils/ExceptionUtil;->handleException(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_EXCEPTION:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    return-object p0
.end method

.method public getMemberId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager$Member;->memberId:Ljava/lang/String;

    return-object p0
.end method

.method public patch()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    .locals 5

    const-string v0, "patch"

    const-string v1, "TrustChain::MemberManager::Member"

    :try_start_0
    const-string v2, "Member patch in"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager$Member;->this$0:Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;

    invoke-static {v2}, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->e(Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;)Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isFailed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager$Member;->this$0:Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;

    invoke-static {v2}, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->c(Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;)Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager$Member;->this$0:Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;

    invoke-static {v3}, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->d(Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;)Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;->ensureAuthToken(Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;Z)Landroid/util/Pair;

    move-result-object v2

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    invoke-static {v3}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isFailed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object p0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    return-object p0

    :cond_1
    invoke-static {}, Lcom/samsung/android/kmxservice/trustchain/client/MembershipClient;->getInstance()Lcom/samsung/android/kmxservice/trustchain/client/MembershipClient;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager$Member;->fabricId:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager$Member;->memberId:Ljava/lang/String;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v4, p0, v2}, Lcom/samsung/android/kmxservice/trustchain/client/MembershipClient;->patchMember(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/kmxservice/trustchain/client/data/Response;

    move-result-object p0

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;->NO_CONTENT:Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;

    invoke-virtual {p0, v2, v1, v0}, Lcom/samsung/android/kmxservice/trustchain/client/data/Response;->isSuccess(Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->SUCCESS:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_MEM_SERVER:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0, v0, v1}, Lcom/samsung/android/kmxservice/trustchain/utils/ExceptionUtil;->handleException(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_EXCEPTION:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    return-object p0
.end method

.method public register(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    .locals 16

    move-object/from16 v0, p0

    const-string v1, "register"

    const-string v2, "TrustChain::MemberManager::Member"

    :try_start_0
    const-string v3, "Member register in"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v0, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager$Member;->this$0:Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;

    invoke-static {v3}, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->f(Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;)Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isFailed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    iget-object v3, v0, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager$Member;->this$0:Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;

    invoke-static {v3}, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->c(Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;)Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;

    move-result-object v3

    iget-object v4, v0, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager$Member;->this$0:Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;

    invoke-static {v4}, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->d(Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;)Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;->ensureAuthToken(Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;Z)Landroid/util/Pair;

    move-result-object v3

    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    invoke-static {v4}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isFailed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    return-object v0

    :cond_1
    invoke-static {}, Lcom/samsung/android/kmxservice/trustchain/client/MembershipClient;->getInstance()Lcom/samsung/android/kmxservice/trustchain/client/MembershipClient;

    move-result-object v4

    iget-object v5, v0, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager$Member;->fabricId:Ljava/lang/String;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v6, v3

    check-cast v6, Ljava/lang/String;

    iget-object v0, v0, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager$Member;->memberId:Ljava/lang/String;

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    move/from16 v14, p8

    move/from16 v15, p9

    invoke-virtual/range {v3 .. v15}, Lcom/samsung/android/kmxservice/trustchain/client/MembershipClient;->registerMember(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/samsung/android/kmxservice/trustchain/client/data/Response;

    move-result-object v0

    sget-object v3, Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;->CREATED_OR_ALREADY_EXIST:Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;

    invoke-virtual {v0, v3, v2, v1}, Lcom/samsung/android/kmxservice/trustchain/client/data/Response;->isSuccess(Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->SUCCESS:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_MEM_SERVER:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/kmxservice/trustchain/utils/ExceptionUtil;->handleException(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_EXCEPTION:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    return-object v0
.end method

.method public setFabricId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager$Member;->fabricId:Ljava/lang/String;

    return-void
.end method

.method public update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    .locals 14

    move-object v0, p0

    const-string v1, "update"

    const-string v2, "TrustChain::MemberManager::Member"

    :try_start_0
    const-string v3, "Member update in"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v0, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager$Member;->this$0:Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;

    invoke-static {v3}, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->e(Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;)Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isFailed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    iget-object v3, v0, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager$Member;->this$0:Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;

    invoke-static {v3}, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->c(Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;)Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;

    move-result-object v3

    iget-object v4, v0, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager$Member;->this$0:Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;

    invoke-static {v4}, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->d(Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;)Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;->ensureAuthToken(Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;Z)Landroid/util/Pair;

    move-result-object v3

    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    invoke-static {v4}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isFailed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    return-object v0

    :cond_1
    invoke-static {}, Lcom/samsung/android/kmxservice/trustchain/client/MembershipClient;->getInstance()Lcom/samsung/android/kmxservice/trustchain/client/MembershipClient;

    move-result-object v4

    iget-object v5, v0, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager$Member;->fabricId:Ljava/lang/String;

    iget-object v0, v0, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager$Member;->memberId:Ljava/lang/String;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v6, v3

    check-cast v6, Ljava/lang/String;

    move-object v3, v4

    move-object v4, v5

    move-object v5, v0

    move-object v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    move/from16 v13, p7

    invoke-virtual/range {v3 .. v13}, Lcom/samsung/android/kmxservice/trustchain/client/MembershipClient;->updateMember(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/samsung/android/kmxservice/trustchain/client/data/Response;

    move-result-object v0

    sget-object v3, Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;->NO_CONTENT:Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;

    invoke-virtual {v0, v3, v2, v1}, Lcom/samsung/android/kmxservice/trustchain/client/data/Response;->isSuccess(Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->SUCCESS:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_MEM_SERVER:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/kmxservice/trustchain/utils/ExceptionUtil;->handleException(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_EXCEPTION:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    return-object v0
.end method

.method public verify()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    .locals 5

    const-string v0, "verify"

    const-string v1, "TrustChain::MemberManager::Member"

    :try_start_0
    const-string v2, "Member verify in"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager$Member;->this$0:Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;

    invoke-static {v2}, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->e(Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;)Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isFailed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager$Member;->this$0:Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;

    invoke-static {v2}, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->c(Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;)Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager$Member;->this$0:Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;

    invoke-static {v3}, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->d(Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;)Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;->ensureAuthToken(Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;Z)Landroid/util/Pair;

    move-result-object v2

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    invoke-static {v3}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isFailed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object p0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    return-object p0

    :cond_1
    invoke-static {}, Lcom/samsung/android/kmxservice/trustchain/client/MembershipClient;->getInstance()Lcom/samsung/android/kmxservice/trustchain/client/MembershipClient;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager$Member;->fabricId:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager$Member;->memberId:Ljava/lang/String;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v4, p0, v2}, Lcom/samsung/android/kmxservice/trustchain/client/MembershipClient;->verifyMember(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/kmxservice/trustchain/client/data/Response;

    move-result-object p0

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;->OK:Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;

    invoke-virtual {p0, v2, v1, v0}, Lcom/samsung/android/kmxservice/trustchain/client/data/Response;->isSuccess(Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->SUCCESS:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_MEM_SERVER:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0, v0, v1}, Lcom/samsung/android/kmxservice/trustchain/utils/ExceptionUtil;->handleException(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_EXCEPTION:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    return-object p0
.end method
