.class public final Lcom/android/server/pm/DefaultCrossProfileResolver;
.super Lcom/android/server/pm/CrossProfileResolver;
.source "DefaultCrossProfileResolver.java"


# instance fields
.field public final mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/resolution/ComponentResolverApi;Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/CrossProfileResolver;-><init>(Lcom/android/server/pm/resolution/ComponentResolverApi;Lcom/android/server/pm/UserManagerService;)V

    .line 52
    iput-object p3, p0, Lcom/android/server/pm/DefaultCrossProfileResolver;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    return-void
.end method


# virtual methods
.method public createForwardingResolveInfo(Lcom/android/server/pm/Computer;Lcom/android/server/pm/CrossProfileIntentFilter;Landroid/content/Intent;Ljava/lang/String;JILjava/util/function/Function;)Lcom/android/server/pm/CrossProfileDomainInfo;
    .locals 14

    move-object v0, p0

    .line 275
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/CrossProfileIntentFilter;->getTargetUserId()I

    move-result v8

    .line 276
    invoke-virtual {p0, v8}, Lcom/android/server/pm/CrossProfileResolver;->isUserEnabled(I)Z

    move-result v1

    const/4 v9, 0x0

    if-nez v1, :cond_0

    return-object v9

    .line 280
    :cond_0
    iget-object v1, v0, Lcom/android/server/pm/CrossProfileResolver;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    move-object v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-wide/from16 v5, p5

    move v7, v8

    invoke-interface/range {v1 .. v7}, Lcom/android/server/pm/resolution/ComponentResolverApi;->queryActivities(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object v7

    .line 282
    invoke-static {v7}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v9

    .line 287
    :cond_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_3

    .line 288
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 289
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x40000000    # 2.0f

    and-int/2addr v2, v3

    if-nez v2, :cond_2

    move-object v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p7

    .line 291
    invoke-interface {p1, v3, v4, v8}, Lcom/android/server/pm/Computer;->createForwardingResolveInfoUnchecked(Lcom/android/server/pm/WatchedIntentFilter;II)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    move-object v10, v1

    goto :goto_1

    :cond_2
    move-object v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p7

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    move-object v10, v9

    :goto_1
    if-nez v10, :cond_4

    return-object v9

    .line 304
    :cond_4
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    const/4 v1, 0x0

    move v11, v1

    move v12, v11

    :goto_2
    if-ge v11, v9, :cond_7

    .line 306
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 307
    iget-boolean v2, v1, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    if-eqz v2, :cond_5

    move-object/from16 v13, p8

    goto :goto_3

    .line 310
    :cond_5
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v13, p8

    .line 311
    invoke-interface {v13, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/server/pm/pkg/PackageStateInternal;

    if-nez v2, :cond_6

    goto :goto_3

    .line 315
    :cond_6
    iget-object v1, v0, Lcom/android/server/pm/DefaultCrossProfileResolver;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    move-object/from16 v3, p3

    move-wide/from16 v4, p5

    move v6, v8

    .line 316
    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->approvalLevelForDomain(Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/content/Intent;JI)I

    move-result v1

    .line 315
    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v12, v1

    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 319
    :cond_7
    new-instance v0, Lcom/android/server/pm/CrossProfileDomainInfo;

    invoke-direct {v0, v10, v12, v8}, Lcom/android/server/pm/CrossProfileDomainInfo;-><init>(Landroid/content/pm/ResolveInfo;II)V

    return-object v0
.end method

.method public filterResolveInfoWithDomainPreferredActivity(Landroid/content/Intent;Ljava/util/List;JIII)Ljava/util/List;
    .locals 0

    .line 133
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_1

    .line 135
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 136
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge p1, p3, :cond_1

    .line 137
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/pm/CrossProfileDomainInfo;

    .line 138
    iget p4, p3, Lcom/android/server/pm/CrossProfileDomainInfo;->mHighestApprovalLevel:I

    if-le p4, p7, :cond_0

    .line 139
    invoke-interface {p0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public final queryCrossProfileIntents(Lcom/android/server/pm/Computer;Ljava/util/List;Landroid/content/Intent;Ljava/lang/String;JIZLjava/util/function/Function;)Lcom/android/server/pm/CrossProfileDomainInfo;
    .locals 16

    move-object/from16 v9, p0

    move-object/from16 v10, p2

    const/4 v11, 0x0

    if-nez v10, :cond_0

    return-object v11

    .line 213
    :cond_0
    new-instance v12, Landroid/util/SparseBooleanArray;

    invoke-direct {v12}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 217
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v13

    const/4 v15, 0x0

    :goto_0
    if-ge v15, v13, :cond_6

    .line 219
    invoke-interface {v10, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/server/pm/CrossProfileIntentFilter;

    .line 220
    invoke-virtual {v2}, Lcom/android/server/pm/CrossProfileIntentFilter;->getTargetUserId()I

    move-result v8

    .line 222
    invoke-virtual {v2}, Lcom/android/server/pm/CrossProfileIntentFilter;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    const/4 v7, 0x1

    if-eqz v0, :cond_1

    move v0, v7

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 224
    :goto_1
    invoke-virtual {v2}, Lcom/android/server/pm/CrossProfileIntentFilter;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    move v1, v7

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-nez v0, :cond_5

    .line 225
    invoke-virtual {v12, v8}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz v1, :cond_3

    if-nez p8, :cond_5

    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-wide/from16 v5, p5

    move v14, v7

    move/from16 v7, p7

    move v11, v8

    move-object/from16 v8, p9

    .line 229
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/pm/DefaultCrossProfileResolver;->createForwardingResolveInfo(Lcom/android/server/pm/Computer;Lcom/android/server/pm/CrossProfileIntentFilter;Landroid/content/Intent;Ljava/lang/String;JILjava/util/function/Function;)Lcom/android/server/pm/CrossProfileDomainInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    goto :goto_3

    .line 235
    :cond_4
    invoke-virtual {v12, v11, v14}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_5
    add-int/lit8 v15, v15, 0x1

    const/4 v11, 0x0

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    :goto_3
    if-nez v0, :cond_7

    const/4 v1, 0x0

    return-object v1

    :cond_7
    const/4 v1, 0x0

    .line 243
    iget-object v2, v0, Lcom/android/server/pm/CrossProfileDomainInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 244
    iget v2, v2, Landroid/content/pm/ResolveInfo;->targetUserId:I

    invoke-virtual {v9, v2}, Lcom/android/server/pm/CrossProfileResolver;->isUserEnabled(I)Z

    move-result v2

    if-nez v2, :cond_8

    return-object v1

    .line 249
    :cond_8
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move/from16 v3, p7

    invoke-virtual {v9, v2, v3}, Lcom/android/server/pm/CrossProfileResolver;->filterIfNotSystemUser(Ljava/util/List;I)Ljava/util/List;

    move-result-object v2

    .line 250
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    return-object v1

    :cond_9
    return-object v0
.end method

.method public final querySkipCurrentProfileIntents(Lcom/android/server/pm/Computer;Ljava/util/List;Landroid/content/Intent;Ljava/lang/String;JILjava/util/function/Function;)Lcom/android/server/pm/CrossProfileDomainInfo;
    .locals 13

    move-object v0, p2

    if-eqz v0, :cond_1

    .line 167
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 169
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lcom/android/server/pm/CrossProfileIntentFilter;

    .line 170
    invoke-virtual {v6}, Lcom/android/server/pm/CrossProfileIntentFilter;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    move-object v4, p0

    move-object v5, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-wide/from16 v9, p5

    move/from16 v11, p7

    move-object/from16 v12, p8

    .line 173
    invoke-virtual/range {v4 .. v12}, Lcom/android/server/pm/DefaultCrossProfileResolver;->createForwardingResolveInfo(Lcom/android/server/pm/Computer;Lcom/android/server/pm/CrossProfileIntentFilter;Landroid/content/Intent;Ljava/lang/String;JILjava/util/function/Function;)Lcom/android/server/pm/CrossProfileDomainInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public resolveIntent(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;IIJLjava/lang/String;Ljava/util/List;ZLjava/util/function/Function;)Ljava/util/List;
    .locals 13

    move-object v10, p0

    move/from16 v11, p4

    .line 84
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    if-eqz p8, :cond_0

    return-object v12

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p9

    move-object v3, p2

    move-object/from16 v4, p3

    move-wide/from16 v5, p6

    move/from16 v7, p4

    move-object/from16 v8, p11

    .line 86
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/pm/DefaultCrossProfileResolver;->querySkipCurrentProfileIntents(Lcom/android/server/pm/Computer;Ljava/util/List;Landroid/content/Intent;Ljava/lang/String;JILjava/util/function/Function;)Lcom/android/server/pm/CrossProfileDomainInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 90
    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    invoke-virtual {p0, v12, v11}, Lcom/android/server/pm/CrossProfileResolver;->filterIfNotSystemUser(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p9

    move-object v3, p2

    move-object/from16 v4, p3

    move-wide/from16 v5, p6

    move/from16 v7, p4

    move/from16 v8, p10

    move-object/from16 v9, p11

    .line 94
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/pm/DefaultCrossProfileResolver;->queryCrossProfileIntents(Lcom/android/server/pm/Computer;Ljava/util/List;Landroid/content/Intent;Ljava/lang/String;JIZLjava/util/function/Function;)Lcom/android/server/pm/CrossProfileDomainInfo;

    move-result-object v7

    .line 98
    invoke-virtual {p2}, Landroid/content/Intent;->hasWebURI()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 100
    invoke-virtual {p0, v11}, Lcom/android/server/pm/CrossProfileResolver;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 102
    iget v6, v0, Landroid/content/pm/UserInfo;->id:I

    move-object v0, p1

    move-object v1, p2

    move-object/from16 v2, p3

    move-wide/from16 v3, p6

    move/from16 v5, p4

    invoke-interface/range {v0 .. v6}, Lcom/android/server/pm/Computer;->getCrossProfileDomainPreferredLpr(Landroid/content/Intent;Ljava/lang/String;JII)Lcom/android/server/pm/CrossProfileDomainInfo;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    move-object v7, v0

    :cond_3
    if-eqz v7, :cond_5

    .line 108
    invoke-interface {v12, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    if-eqz v7, :cond_5

    .line 111
    invoke-interface {v12, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_1
    return-object v12
.end method
