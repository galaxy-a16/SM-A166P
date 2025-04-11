.class public Lcom/android/server/asks/UnknownStore;
.super Ljava/lang/Object;
.source "UnknownStore.java"


# instance fields
.field public BASE_CODE_PATH:Ljava/lang/String;

.field public KEY_VALUE:Ljava/lang/String;

.field public PKGNAME:Ljava/lang/String;

.field public PKGSIGHASH:Ljava/lang/String;

.field public SIGHASH:Ljava/lang/String;

.field public blockPermGroup:Ljava/util/ArrayList;

.field public blockPermissions:Ljava/util/HashMap;

.field public certPolicies:Ljava/util/HashMap;

.field public defaultCertPolicy:Lcom/android/server/asks/PKGINFO;

.field public exceptPkgName:Ljava/util/ArrayList;

.field public executeBlockPkgName:Ljava/util/ArrayList;

.field public regexDomainRule:Ljava/util/ArrayList;

.field public regexPackageRule:Ljava/util/ArrayList;

.field public tagNameList:Ljava/util/ArrayList;

.field public unknownAppsList:Ljava/util/HashMap;

.field public warningPermGroup:Ljava/util/ArrayList;

.field public warningPermissions:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/asks/UnknownStore;->KEY_VALUE:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/asks/UnknownStore;->PKGNAME:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/asks/UnknownStore;->SIGHASH:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/asks/UnknownStore;->PKGSIGHASH:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/asks/UnknownStore;->BASE_CODE_PATH:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/asks/UnknownStore;->blockPermissions:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/android/server/asks/UnknownStore;->warningPermissions:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/android/server/asks/UnknownStore;->blockPermGroup:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/server/asks/UnknownStore;->warningPermGroup:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/server/asks/UnknownStore;->certPolicies:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/android/server/asks/UnknownStore;->executeBlockPkgName:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/server/asks/UnknownStore;->exceptPkgName:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/server/asks/UnknownStore;->regexDomainRule:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/server/asks/UnknownStore;->regexPackageRule:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/server/asks/UnknownStore;->tagNameList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/server/asks/UnknownStore;->unknownAppsList:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/android/server/asks/UnknownStore;->defaultCertPolicy:Lcom/android/server/asks/PKGINFO;

    return-void
.end method


# virtual methods
.method public addCertPolicy(Ljava/lang/String;IIILjava/lang/String;IILjava/lang/String;Ljava/lang/String;I)V
    .locals 13

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object/from16 v3, p5

    move/from16 v8, p10

    const-string v4, "ALL"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v0, p0

    move v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p6

    move/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move/from16 v8, p10

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/asks/UnknownStore;->addDefaultPolicy(IIIIILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_4

    :cond_0
    iget-object v5, v0, Lcom/android/server/asks/UnknownStore;->certPolicies:Ljava/util/HashMap;

    if-nez v5, :cond_1

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v0, Lcom/android/server/asks/UnknownStore;->certPolicies:Ljava/util/HashMap;

    :cond_1
    iget-object v5, v0, Lcom/android/server/asks/UnknownStore;->certPolicies:Ljava/util/HashMap;

    if-eqz v5, :cond_11

    if-eqz v1, :cond_11

    if-eqz v3, :cond_11

    new-instance v5, Lcom/android/server/asks/PKGINFO;

    invoke-direct {v5}, Lcom/android/server/asks/PKGINFO;-><init>()V

    iget-object v6, v0, Lcom/android/server/asks/UnknownStore;->defaultCertPolicy:Lcom/android/server/asks/PKGINFO;

    if-eqz v6, :cond_8

    const/16 v7, 0x1f4

    if-ne v2, v7, :cond_2

    iget v2, v6, Lcom/android/server/asks/PKGINFO;->isExecuteBlock:I

    goto :goto_0

    :cond_2
    const/16 v6, 0x1f8

    if-ne v2, v6, :cond_4

    iget-object v6, v0, Lcom/android/server/asks/UnknownStore;->executeBlockPkgName:Ljava/util/ArrayList;

    if-nez v6, :cond_3

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v0, Lcom/android/server/asks/UnknownStore;->executeBlockPkgName:Ljava/util/ArrayList;

    :cond_3
    iget-object v6, v0, Lcom/android/server/asks/UnknownStore;->executeBlockPkgName:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, v0, Lcom/android/server/asks/UnknownStore;->executeBlockPkgName:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_0
    move/from16 v6, p6

    if-ne v6, v7, :cond_5

    iget-object v6, v0, Lcom/android/server/asks/UnknownStore;->defaultCertPolicy:Lcom/android/server/asks/PKGINFO;

    iget v6, v6, Lcom/android/server/asks/PKGINFO;->policyTarget:I

    :cond_5
    move/from16 v9, p7

    if-ne v9, v7, :cond_6

    iget-object v9, v0, Lcom/android/server/asks/UnknownStore;->defaultCertPolicy:Lcom/android/server/asks/PKGINFO;

    iget v9, v9, Lcom/android/server/asks/PKGINFO;->reportedTarget:I

    :cond_6
    move/from16 v10, p3

    if-ne v10, v7, :cond_7

    iget-object v10, v0, Lcom/android/server/asks/UnknownStore;->defaultCertPolicy:Lcom/android/server/asks/PKGINFO;

    iget v10, v10, Lcom/android/server/asks/PKGINFO;->SA:I

    :cond_7
    if-ne v8, v7, :cond_9

    iget-object v7, v0, Lcom/android/server/asks/UnknownStore;->defaultCertPolicy:Lcom/android/server/asks/PKGINFO;

    iget v7, v7, Lcom/android/server/asks/PKGINFO;->regexDomain:I

    move v12, v7

    goto :goto_1

    :cond_8
    move/from16 v10, p3

    move/from16 v6, p6

    move/from16 v9, p7

    :cond_9
    move v12, v8

    :goto_1
    move v11, v9

    move v9, v10

    move v10, v6

    const/16 v6, 0x1f7

    if-ne v8, v6, :cond_b

    iget-object v6, v0, Lcom/android/server/asks/UnknownStore;->regexDomainRule:Ljava/util/ArrayList;

    if-nez v6, :cond_a

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v0, Lcom/android/server/asks/UnknownStore;->regexDomainRule:Ljava/util/ArrayList;

    :cond_a
    iget-object v6, v0, Lcom/android/server/asks/UnknownStore;->regexDomainRule:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    iget-object v6, v0, Lcom/android/server/asks/UnknownStore;->regexDomainRule:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_b
    const/16 v6, 0x1f6

    if-ne v12, v6, :cond_d

    iget-object v6, v0, Lcom/android/server/asks/UnknownStore;->regexPackageRule:Ljava/util/ArrayList;

    if-nez v6, :cond_c

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v0, Lcom/android/server/asks/UnknownStore;->regexPackageRule:Ljava/util/ArrayList;

    :cond_c
    iget-object v6, v0, Lcom/android/server/asks/UnknownStore;->regexPackageRule:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    iget-object v6, v0, Lcom/android/server/asks/UnknownStore;->regexPackageRule:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    :goto_2
    if-nez p4, :cond_f

    iget-object v6, v0, Lcom/android/server/asks/UnknownStore;->exceptPkgName:Ljava/util/ArrayList;

    if-nez v6, :cond_e

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v0, Lcom/android/server/asks/UnknownStore;->exceptPkgName:Ljava/util/ArrayList;

    :cond_e
    iget-object v6, v0, Lcom/android/server/asks/UnknownStore;->exceptPkgName:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f

    iget-object v6, v0, Lcom/android/server/asks/UnknownStore;->exceptPkgName:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    move-object v6, v5

    move/from16 v7, p4

    move v8, v2

    invoke-virtual/range {v6 .. v12}, Lcom/android/server/asks/PKGINFO;->set(IIIIII)V

    iget-object v2, v0, Lcom/android/server/asks/UnknownStore;->certPolicies:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_10
    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    iget-object v0, v0, Lcom/android/server/asks/UnknownStore;->certPolicies:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    :goto_4
    return-void
.end method

.method public final addDefaultPolicy(IIIIILjava/lang/String;Ljava/lang/String;I)V
    .locals 14

    move-object v0, p0

    move v1, p1

    move-object/from16 v2, p6

    move/from16 v3, p8

    iget-object v4, v0, Lcom/android/server/asks/UnknownStore;->defaultCertPolicy:Lcom/android/server/asks/PKGINFO;

    if-nez v4, :cond_d

    new-instance v4, Lcom/android/server/asks/PKGINFO;

    invoke-direct {v4}, Lcom/android/server/asks/PKGINFO;-><init>()V

    iput-object v4, v0, Lcom/android/server/asks/UnknownStore;->defaultCertPolicy:Lcom/android/server/asks/PKGINFO;

    const-string v4, "ALL"

    const/16 v5, 0x1f4

    if-ne v1, v5, :cond_0

    const/16 v1, 0x1f9

    goto :goto_0

    :cond_0
    const/16 v6, 0x1f8

    if-ne v1, v6, :cond_2

    iget-object v6, v0, Lcom/android/server/asks/UnknownStore;->executeBlockPkgName:Ljava/util/ArrayList;

    if-nez v6, :cond_1

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v0, Lcom/android/server/asks/UnknownStore;->executeBlockPkgName:Ljava/util/ArrayList;

    :cond_1
    iget-object v6, v0, Lcom/android/server/asks/UnknownStore;->executeBlockPkgName:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, v0, Lcom/android/server/asks/UnknownStore;->executeBlockPkgName:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v0, Lcom/android/server/asks/UnknownStore;->executeBlockPkgName:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    move v9, v1

    if-ne v3, v5, :cond_3

    move v13, v5

    goto :goto_2

    :cond_3
    const/16 v1, 0x1f7

    if-ne v3, v1, :cond_4

    :goto_1
    move v13, v1

    goto :goto_2

    :cond_4
    const/16 v1, 0x1f6

    if-ne v3, v1, :cond_5

    goto :goto_1

    :cond_5
    move v13, v3

    :goto_2
    const/16 v1, 0x1f5

    move/from16 v3, p4

    if-ne v3, v5, :cond_6

    move/from16 v3, p5

    move v11, v1

    goto :goto_3

    :cond_6
    move v11, v3

    move/from16 v3, p5

    :goto_3
    if-ne v3, v5, :cond_7

    move v12, v1

    move/from16 v1, p2

    goto :goto_4

    :cond_7
    move/from16 v1, p2

    move v12, v3

    :goto_4
    if-ne v1, v5, :cond_8

    const/4 v1, 0x0

    :cond_8
    move v10, v1

    if-nez p3, :cond_a

    iget-object v1, v0, Lcom/android/server/asks/UnknownStore;->exceptPkgName:Ljava/util/ArrayList;

    if-nez v1, :cond_9

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/server/asks/UnknownStore;->exceptPkgName:Ljava/util/ArrayList;

    :cond_9
    iget-object v1, v0, Lcom/android/server/asks/UnknownStore;->exceptPkgName:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, v0, Lcom/android/server/asks/UnknownStore;->exceptPkgName:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/android/server/asks/UnknownStore;->exceptPkgName:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    iget-object v1, v0, Lcom/android/server/asks/UnknownStore;->unknownAppsList:Ljava/util/HashMap;

    if-nez v1, :cond_b

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/android/server/asks/UnknownStore;->unknownAppsList:Ljava/util/HashMap;

    :cond_b
    iget-object v1, v0, Lcom/android/server/asks/UnknownStore;->unknownAppsList:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, v0, Lcom/android/server/asks/UnknownStore;->unknownAppsList:Ljava/util/HashMap;

    move-object/from16 v3, p7

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    iget-object v7, v0, Lcom/android/server/asks/UnknownStore;->defaultCertPolicy:Lcom/android/server/asks/PKGINFO;

    move/from16 v8, p3

    invoke-virtual/range {v7 .. v13}, Lcom/android/server/asks/PKGINFO;->set(IIIIII)V

    :cond_d
    return-void
.end method

.method public addPermission(Ljava/lang/String;ZIIIIIIZLjava/lang/String;ILjava/lang/String;Z)V
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p10

    move/from16 v3, p11

    move-object/from16 v4, p12

    iget-object v5, v0, Lcom/android/server/asks/UnknownStore;->blockPermGroup:Ljava/util/ArrayList;

    if-nez v5, :cond_0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lcom/android/server/asks/UnknownStore;->blockPermGroup:Ljava/util/ArrayList;

    :cond_0
    iget-object v5, v0, Lcom/android/server/asks/UnknownStore;->warningPermGroup:Ljava/util/ArrayList;

    if-nez v5, :cond_1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lcom/android/server/asks/UnknownStore;->warningPermGroup:Ljava/util/ArrayList;

    :cond_1
    iget-object v5, v0, Lcom/android/server/asks/UnknownStore;->blockPermissions:Ljava/util/HashMap;

    if-nez v5, :cond_2

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v0, Lcom/android/server/asks/UnknownStore;->blockPermissions:Ljava/util/HashMap;

    :cond_2
    iget-object v5, v0, Lcom/android/server/asks/UnknownStore;->warningPermissions:Ljava/util/HashMap;

    if-nez v5, :cond_3

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v0, Lcom/android/server/asks/UnknownStore;->warningPermissions:Ljava/util/HashMap;

    :cond_3
    iget-object v5, v0, Lcom/android/server/asks/UnknownStore;->tagNameList:Ljava/util/ArrayList;

    if-nez v5, :cond_4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lcom/android/server/asks/UnknownStore;->tagNameList:Ljava/util/ArrayList;

    :cond_4
    if-eqz p2, :cond_7

    if-eqz p9, :cond_6

    iget-object v5, v0, Lcom/android/server/asks/UnknownStore;->blockPermGroup:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_5

    iget-object v6, v0, Lcom/android/server/asks/UnknownStore;->blockPermGroup:Ljava/util/ArrayList;

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    goto :goto_0

    :cond_5
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_6
    iget-object v5, v0, Lcom/android/server/asks/UnknownStore;->blockPermissions:Ljava/util/HashMap;

    goto :goto_0

    :cond_7
    if-eqz p9, :cond_9

    iget-object v5, v0, Lcom/android/server/asks/UnknownStore;->warningPermGroup:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_8

    iget-object v6, v0, Lcom/android/server/asks/UnknownStore;->warningPermGroup:Ljava/util/ArrayList;

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    goto :goto_0

    :cond_8
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_9
    iget-object v5, v0, Lcom/android/server/asks/UnknownStore;->warningPermissions:Ljava/util/HashMap;

    :goto_0
    if-eqz v5, :cond_b

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    iget-object v6, v0, Lcom/android/server/asks/UnknownStore;->tagNameList:Ljava/util/ArrayList;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    new-instance v6, Lcom/android/server/asks/PEMINFO;

    invoke-direct {v6}, Lcom/android/server/asks/PEMINFO;-><init>()V

    move-object v7, v6

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p3

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    invoke-virtual/range {v7 .. v13}, Lcom/android/server/asks/PEMINFO;->set(IIIIII)V

    if-eqz v2, :cond_a

    const/4 v7, -0x1

    if-eq v3, v7, :cond_a

    invoke-virtual {v6, v2, v3}, Lcom/android/server/asks/PEMINFO;->setMoreRules(Ljava/lang/String;I)V

    :cond_a
    invoke-virtual {v5, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p13, :cond_b

    iget-object v0, v0, Lcom/android/server/asks/UnknownStore;->tagNameList:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    return-void
.end method

.method public addPermissionGroup(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/asks/UnknownStore;->blockPermGroup:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/asks/UnknownStore;->blockPermGroup:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/android/server/asks/UnknownStore;->warningPermGroup:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/asks/UnknownStore;->warningPermGroup:Ljava/util/ArrayList;

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/server/asks/UnknownStore;->blockPermGroup:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/server/asks/UnknownStore;->warningPermGroup:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public checkDomain(Ljava/lang/String;Lcom/android/server/asks/RETVALUE;)Z
    .locals 9

    invoke-virtual {p0}, Lcom/android/server/asks/UnknownStore;->isDevDevice()Z

    move-result v0

    const-string v1, "PackageInformationStore"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " checkDomain() : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/android/server/asks/UnknownStore;->certPolicies:Ljava/util/HashMap;

    if-eqz v2, :cond_2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/android/server/asks/UnknownStore;->certPolicies:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    if-eqz p0, :cond_1

    const-string p1, "ALL"

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/asks/PKGINFO;

    if-eqz p0, :cond_2

    const-string p1, "checkPolicyWithDetail() : Target"

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/server/asks/PKGINFO;->policy:I

    iget v5, p0, Lcom/android/server/asks/PKGINFO;->SA:I

    iget v6, p0, Lcom/android/server/asks/PKGINFO;->isExecuteBlock:I

    iget v7, p0, Lcom/android/server/asks/PKGINFO;->policyTarget:I

    iget v8, p0, Lcom/android/server/asks/PKGINFO;->reportedTarget:I

    move-object v2, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/asks/RETVALUE;->set(IIIIII)V

    const/4 p0, 0x1

    move v0, p0

    goto :goto_0

    :cond_1
    const-string p0, " no"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return v0
.end method

.method public final checkMoreRule(Lcom/android/server/asks/PEMINFO;Lcom/android/server/asks/RETVALUE;)V
    .locals 9

    const/4 v0, 0x3

    if-eqz p2, :cond_0

    invoke-virtual {p2, v0}, Lcom/android/server/asks/RETVALUE;->setStatus(I)V

    :cond_0
    const-string v1, "PackageInformationStore"

    if-eqz p1, :cond_b

    iget-object v2, p1, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    if-eqz v2, :cond_b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkMoreRule() : ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    iget-boolean v3, v3, Lcom/android/server/asks/MORERULES;->check_moreRule_RANK:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "]["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    iget-boolean v4, v4, Lcom/android/server/asks/MORERULES;->check_moreRule_RandomPkg:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    iget-boolean v3, v3, Lcom/android/server/asks/MORERULES;->check_moreRule_Malformed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p1, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    iget-boolean v2, v2, Lcom/android/server/asks/MORERULES;->check_moreRule_RANK:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/server/asks/UnknownStore;->isDevDevice()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "check_moreRule_Famous ="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    iget v4, v4, Lcom/android/server/asks/MORERULES;->moreRulePolicy:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v2, Lcom/android/server/asks/MoreRuleRANK;

    invoke-direct {v2}, Lcom/android/server/asks/MoreRuleRANK;-><init>()V

    iget-object v4, p0, Lcom/android/server/asks/UnknownStore;->SIGHASH:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/asks/UnknownStore;->PKGSIGHASH:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lcom/android/server/asks/MoreRuleRANK;->getResult(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "It is target of rank. "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/asks/UnknownStore;->isDevDevice()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p1, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    iget v4, v4, Lcom/android/server/asks/MORERULES;->moreRulePolicy:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_0

    :cond_2
    const-string v4, ""

    :goto_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2, v3}, Lcom/android/server/asks/RETVALUE;->setStatus(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p2, v0}, Lcom/android/server/asks/RETVALUE;->setStatus(I)V

    return-void

    :cond_4
    :goto_1
    iget-object v2, p1, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    iget-boolean v2, v2, Lcom/android/server/asks/MORERULES;->check_moreRule_RandomPkg:Z

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lcom/android/server/asks/UnknownStore;->isDevDevice()Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "check_moreRule_RandomPkg"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    iget v4, v4, Lcom/android/server/asks/MORERULES;->moreRulePolicy:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    new-instance v2, Lcom/android/server/asks/MoreRuleRandomPkg;

    invoke-direct {v2}, Lcom/android/server/asks/MoreRuleRandomPkg;-><init>()V

    iget-object v4, p0, Lcom/android/server/asks/UnknownStore;->PKGNAME:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/android/server/asks/MoreRuleRandomPkg;->getResult(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p0}, Lcom/android/server/asks/UnknownStore;->isDevDevice()Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "It is target of randomPkg. "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    iget v4, v4, Lcom/android/server/asks/MORERULES;->moreRulePolicy:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-virtual {p2, v3}, Lcom/android/server/asks/RETVALUE;->setStatus(I)V

    goto :goto_2

    :cond_7
    invoke-virtual {p2, v0}, Lcom/android/server/asks/RETVALUE;->setStatus(I)V

    return-void

    :cond_8
    :goto_2
    iget-object v2, p1, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    iget-boolean v2, v2, Lcom/android/server/asks/MORERULES;->check_moreRule_Malformed:Z

    if-eqz v2, :cond_c

    invoke-virtual {p0}, Lcom/android/server/asks/UnknownStore;->isDevDevice()Z

    move-result v2

    if-eqz v2, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "check_moreRule_MALFORMED:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    iget p1, p1, Lcom/android/server/asks/MORERULES;->moreRulePolicy:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object p0, p0, Lcom/android/server/asks/UnknownStore;->BASE_CODE_PATH:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/server/asks/ZipAnalyzerUtil;->analyzeZipFile(Ljava/lang/String;)[I

    move-result-object p0

    if-eqz p0, :cond_c

    invoke-static {p0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/IntStream;->sum()I

    move-result p0

    if-lez p0, :cond_a

    const-string p0, "Zip broken"

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/asks/RETVALUE;->set(IIIIII)V

    goto :goto_3

    :cond_a
    const-string p0, "Zip Success"

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2, v0}, Lcom/android/server/asks/RETVALUE;->setStatus(I)V

    return-void

    :cond_b
    invoke-virtual {p2, v0}, Lcom/android/server/asks/RETVALUE;->setStatus(I)V

    const-string p0, "The moreRule targetPolicy may be NULL."

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :goto_3
    return-void
.end method

.method public checkPolicy(Ljava/lang/String;Lcom/android/server/asks/RETVALUE;)V
    .locals 8

    iget-object v2, p0, Lcom/android/server/asks/UnknownStore;->certPolicies:Ljava/util/HashMap;

    if-nez v2, :cond_0

    iget-object v3, p0, Lcom/android/server/asks/UnknownStore;->blockPermissions:Ljava/util/HashMap;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/asks/UnknownStore;->warningPermissions:Ljava/util/HashMap;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/asks/UnknownStore;->blockPermGroup:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/asks/UnknownStore;->warningPermGroup:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/asks/UnknownStore;->defaultCertPolicy:Lcom/android/server/asks/PKGINFO;

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    iget v2, v3, Lcom/android/server/asks/PKGINFO;->policy:I

    iget v4, v3, Lcom/android/server/asks/PKGINFO;->SA:I

    iget v5, v3, Lcom/android/server/asks/PKGINFO;->isExecuteBlock:I

    iget v6, v3, Lcom/android/server/asks/PKGINFO;->policyTarget:I

    iget v7, v3, Lcom/android/server/asks/PKGINFO;->reportedTarget:I

    move-object v0, p2

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/asks/RETVALUE;->set(IIIIII)V

    return-void

    :cond_0
    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    const-string v3, "PackageInformationStore"

    if-eqz v2, :cond_2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/asks/UnknownStore;->certPolicies:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    const-string v2, "ALL"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/asks/PKGINFO;

    if-eqz v1, :cond_2

    const-string v0, "checkPolicy() : Target"

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    iget v3, v1, Lcom/android/server/asks/PKGINFO;->policy:I

    iget v4, v1, Lcom/android/server/asks/PKGINFO;->SA:I

    iget v5, v1, Lcom/android/server/asks/PKGINFO;->isExecuteBlock:I

    iget v6, v1, Lcom/android/server/asks/PKGINFO;->policyTarget:I

    iget v7, v1, Lcom/android/server/asks/PKGINFO;->reportedTarget:I

    move-object v0, p2

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/asks/RETVALUE;->set(IIIIII)V

    return-void

    :cond_1
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/asks/RETVALUE;->set(IIIIII)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/server/asks/UnknownStore;->blockPermissions:Ljava/util/HashMap;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/asks/UnknownStore;->warningPermissions:Ljava/util/HashMap;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/asks/UnknownStore;->blockPermGroup:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/asks/UnknownStore;->warningPermGroup:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/asks/RETVALUE;->set(IIIIII)V

    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/server/asks/UnknownStore;->defaultCertPolicy:Lcom/android/server/asks/PKGINFO;

    if-eqz v1, :cond_4

    const-string v1, "checkPolicy() : Default"

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/asks/UnknownStore;->defaultCertPolicy:Lcom/android/server/asks/PKGINFO;

    iget v2, v0, Lcom/android/server/asks/PKGINFO;->policy:I

    iget v3, v0, Lcom/android/server/asks/PKGINFO;->SA:I

    iget v4, v0, Lcom/android/server/asks/PKGINFO;->isExecuteBlock:I

    iget v5, v0, Lcom/android/server/asks/PKGINFO;->policyTarget:I

    iget v6, v0, Lcom/android/server/asks/PKGINFO;->reportedTarget:I

    move-object v0, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/asks/RETVALUE;->set(IIIIII)V

    return-void

    :cond_4
    if-eqz p2, :cond_5

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/asks/RETVALUE;->set(IIIIII)V

    :cond_5
    return-void
.end method

.method public checkPolicyWithAppHash(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/asks/RETVALUE;)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/asks/UnknownStore;->certPolicies:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/asks/UnknownStore;->certPolicies:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "checkPolicyWithDetail() : Target"

    const-string v2, "PackageInformationStore"

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/asks/PKGINFO;

    if-eqz p0, :cond_2

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/server/asks/PKGINFO;->policy:I

    iget v6, p0, Lcom/android/server/asks/PKGINFO;->SA:I

    iget v7, p0, Lcom/android/server/asks/PKGINFO;->isExecuteBlock:I

    iget v8, p0, Lcom/android/server/asks/PKGINFO;->policyTarget:I

    iget v9, p0, Lcom/android/server/asks/PKGINFO;->reportedTarget:I

    move-object v3, p3

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/asks/RETVALUE;->set(IIIIII)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/android/server/asks/UnknownStore;->blockPermissions:Ljava/util/HashMap;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/server/asks/UnknownStore;->warningPermissions:Ljava/util/HashMap;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/server/asks/UnknownStore;->blockPermGroup:Ljava/util/ArrayList;

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/android/server/asks/UnknownStore;->warningPermGroup:Ljava/util/ArrayList;

    if-eqz p0, :cond_1

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p3

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/asks/RETVALUE;->set(IIIIII)V

    return-void

    :cond_1
    const-string p0, "ALL"

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/asks/PKGINFO;

    if-eqz p0, :cond_2

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/server/asks/PKGINFO;->policy:I

    iget v6, p0, Lcom/android/server/asks/PKGINFO;->SA:I

    iget v7, p0, Lcom/android/server/asks/PKGINFO;->isExecuteBlock:I

    iget v8, p0, Lcom/android/server/asks/PKGINFO;->policyTarget:I

    iget v9, p0, Lcom/android/server/asks/PKGINFO;->reportedTarget:I

    move-object v3, p3

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/asks/RETVALUE;->set(IIIIII)V

    :cond_2
    :goto_0
    return-void
.end method

.method public checkPolicyWithPEM([Ljava/lang/String;IZLcom/android/server/asks/RETVALUE;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p4

    if-eqz v3, :cond_24

    const-string/jumbo v4, "start to check P policy."

    const-string v5, "PackageInformationStore"

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v0, Lcom/android/server/asks/UnknownStore;->blockPermGroup:Ljava/util/ArrayList;

    if-eqz v4, :cond_22

    iget-object v4, v0, Lcom/android/server/asks/UnknownStore;->warningPermGroup:Ljava/util/ArrayList;

    if-eqz v4, :cond_22

    iget-object v4, v0, Lcom/android/server/asks/UnknownStore;->blockPermissions:Ljava/util/HashMap;

    if-eqz v4, :cond_22

    iget-object v4, v0, Lcom/android/server/asks/UnknownStore;->warningPermissions:Ljava/util/HashMap;

    if-eqz v4, :cond_22

    if-eqz v1, :cond_22

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    :goto_0
    array-length v8, v1

    if-ge v7, v8, :cond_0

    aget-object v8, v1, v7

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_1
    iget-object v13, v0, Lcom/android/server/asks/UnknownStore;->blockPermGroup:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v9, v13, :cond_5

    iget-object v10, v0, Lcom/android/server/asks/UnknownStore;->blockPermGroup:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move v13, v12

    const/4 v12, 0x0

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    const/4 v11, 0x0

    goto :goto_3

    :cond_1
    if-nez v12, :cond_2

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/asks/UnknownStore;->isDevDevice()Z

    move-result v14

    if-eqz v14, :cond_2

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "additional P(B) :targetKey  - "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v5, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_3
    const/4 v11, 0x1

    :goto_3
    if-eqz v11, :cond_4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "all target! "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_4
    add-int/lit8 v9, v9, 0x1

    move v10, v11

    move-object v11, v12

    move v12, v13

    goto :goto_1

    :cond_5
    move-object v12, v11

    move v11, v10

    const/4 v10, 0x0

    :goto_4
    const-string v9, "additional P(B): apply MoreRule"

    const/16 v13, 0x1f5

    const/16 v14, 0x1f7

    const/16 v15, 0x1f6

    const/4 v6, 0x3

    if-eqz v10, :cond_a

    if-eqz v11, :cond_a

    invoke-virtual {v10, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/asks/PEMINFO;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkPolicywithPem(B) :targetKey  - "

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v10, :cond_a

    iget v7, v10, Lcom/android/server/asks/PEMINFO;->MIN:I

    if-gt v7, v2, :cond_a

    iget v7, v10, Lcom/android/server/asks/PEMINFO;->MAX:I

    if-gt v2, v7, :cond_a

    invoke-virtual {v0, v10, v3}, Lcom/android/server/asks/UnknownStore;->checkMoreRule(Lcom/android/server/asks/PEMINFO;Lcom/android/server/asks/RETVALUE;)V

    iget v7, v3, Lcom/android/server/asks/RETVALUE;->status:I

    if-eqz v7, :cond_6

    if-eq v7, v6, :cond_7

    goto/16 :goto_5

    :cond_6
    iget-object v7, v10, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    if-eqz v7, :cond_7

    iget v7, v7, Lcom/android/server/asks/MORERULES;->moreRulePolicy:I

    iput v7, v10, Lcom/android/server/asks/PEMINFO;->policy:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/asks/UnknownStore;->isDevDevice()Z

    move-result v7

    if-eqz v7, :cond_7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v10, Lcom/android/server/asks/PEMINFO;->policy:I

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget v7, v10, Lcom/android/server/asks/PEMINFO;->policyTarget:I

    if-ne v7, v15, :cond_8

    if-nez p3, :cond_8

    const-string v0, "additional P(B) : Target Group(local)"

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iget v2, v10, Lcom/android/server/asks/PEMINFO;->policy:I

    iget v4, v10, Lcom/android/server/asks/PEMINFO;->SA:I

    const/16 v5, 0x1f9

    iget v6, v10, Lcom/android/server/asks/PEMINFO;->policyTarget:I

    iget v7, v10, Lcom/android/server/asks/PEMINFO;->reportedTarget:I

    move-object/from16 v0, p4

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/asks/RETVALUE;->set(IIIIII)V

    return-void

    :cond_8
    if-ne v7, v14, :cond_9

    if-eqz p3, :cond_9

    const-string v0, "additional P(B) : Target Group(url)"

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iget v2, v10, Lcom/android/server/asks/PEMINFO;->policy:I

    iget v4, v10, Lcom/android/server/asks/PEMINFO;->SA:I

    const/16 v5, 0x1f9

    iget v6, v10, Lcom/android/server/asks/PEMINFO;->policyTarget:I

    iget v7, v10, Lcom/android/server/asks/PEMINFO;->reportedTarget:I

    move-object/from16 v0, p4

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/asks/RETVALUE;->set(IIIIII)V

    return-void

    :cond_9
    if-ne v7, v13, :cond_a

    const-string v0, "additional P(B) :  Target Group"

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iget v2, v10, Lcom/android/server/asks/PEMINFO;->policy:I

    iget v4, v10, Lcom/android/server/asks/PEMINFO;->SA:I

    const/16 v5, 0x1f9

    iget v6, v10, Lcom/android/server/asks/PEMINFO;->policyTarget:I

    iget v7, v10, Lcom/android/server/asks/PEMINFO;->reportedTarget:I

    move-object/from16 v0, p4

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/asks/RETVALUE;->set(IIIIII)V

    return-void

    :cond_a
    :goto_5
    const/4 v7, 0x0

    :goto_6
    array-length v10, v1

    if-ge v7, v10, :cond_10

    iget-object v10, v0, Lcom/android/server/asks/UnknownStore;->blockPermissions:Ljava/util/HashMap;

    aget-object v11, v1, v7

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    iget-object v10, v0, Lcom/android/server/asks/UnknownStore;->blockPermissions:Ljava/util/HashMap;

    aget-object v11, v1, v7

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/asks/PEMINFO;

    if-eqz v10, :cond_f

    iget v11, v10, Lcom/android/server/asks/PEMINFO;->MIN:I

    if-gt v11, v2, :cond_f

    iget v11, v10, Lcom/android/server/asks/PEMINFO;->MAX:I

    if-gt v2, v11, :cond_f

    invoke-virtual {v0, v10, v3}, Lcom/android/server/asks/UnknownStore;->checkMoreRule(Lcom/android/server/asks/PEMINFO;Lcom/android/server/asks/RETVALUE;)V

    iget v11, v3, Lcom/android/server/asks/RETVALUE;->status:I

    if-eqz v11, :cond_b

    if-eq v11, v6, :cond_c

    goto/16 :goto_7

    :cond_b
    iget-object v11, v10, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    if-eqz v11, :cond_c

    iget v11, v11, Lcom/android/server/asks/MORERULES;->moreRulePolicy:I

    iput v11, v10, Lcom/android/server/asks/PEMINFO;->policy:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/asks/UnknownStore;->isDevDevice()Z

    move-result v11

    if-eqz v11, :cond_c

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v10, Lcom/android/server/asks/PEMINFO;->policy:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    iget v11, v10, Lcom/android/server/asks/PEMINFO;->policyTarget:I

    if-ne v11, v15, :cond_d

    if-nez p3, :cond_d

    const-string v0, "additional P(B) : Target(local)"

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iget v2, v10, Lcom/android/server/asks/PEMINFO;->policy:I

    iget v4, v10, Lcom/android/server/asks/PEMINFO;->SA:I

    const/16 v5, 0x1f9

    iget v6, v10, Lcom/android/server/asks/PEMINFO;->policyTarget:I

    iget v7, v10, Lcom/android/server/asks/PEMINFO;->reportedTarget:I

    move-object/from16 v0, p4

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/asks/RETVALUE;->set(IIIIII)V

    return-void

    :cond_d
    if-ne v11, v14, :cond_e

    if-eqz p3, :cond_e

    const-string v0, "additional P(B) : Target(url)"

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iget v2, v10, Lcom/android/server/asks/PEMINFO;->policy:I

    iget v4, v10, Lcom/android/server/asks/PEMINFO;->SA:I

    const/16 v5, 0x1f9

    iget v6, v10, Lcom/android/server/asks/PEMINFO;->policyTarget:I

    iget v7, v10, Lcom/android/server/asks/PEMINFO;->reportedTarget:I

    move-object/from16 v0, p4

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/asks/RETVALUE;->set(IIIIII)V

    return-void

    :cond_e
    if-ne v11, v13, :cond_f

    const-string v0, "additional P(B) : Target"

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iget v2, v10, Lcom/android/server/asks/PEMINFO;->policy:I

    iget v4, v10, Lcom/android/server/asks/PEMINFO;->SA:I

    const/16 v5, 0x1f9

    iget v6, v10, Lcom/android/server/asks/PEMINFO;->policyTarget:I

    iget v7, v10, Lcom/android/server/asks/PEMINFO;->reportedTarget:I

    move-object/from16 v0, p4

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/asks/RETVALUE;->set(IIIIII)V

    return-void

    :cond_f
    :goto_7
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_6

    :cond_10
    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_8
    iget-object v12, v0, Lcom/android/server/asks/UnknownStore;->warningPermGroup:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v7, v12, :cond_15

    iget-object v9, v0, Lcom/android/server/asks/UnknownStore;->warningPermGroup:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v12, v11

    const/4 v11, 0x0

    :goto_9
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_13

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map$Entry;

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_11

    const/4 v8, 0x0

    goto :goto_a

    :cond_11
    if-nez v11, :cond_12

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    move-object v11, v8

    check-cast v11, Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/asks/UnknownStore;->isDevDevice()Z

    move-result v8

    if-eqz v8, :cond_12

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "additional P(Wa) : targetKey="

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    add-int/lit8 v12, v12, 0x1

    const/16 v13, 0x1f5

    goto :goto_9

    :cond_13
    const/4 v8, 0x1

    :goto_a
    if-eqz v8, :cond_14

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "additional P(Wa) : target all "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v9

    move-object v10, v11

    move v9, v8

    goto :goto_b

    :cond_14
    add-int/lit8 v7, v7, 0x1

    move v9, v8

    move-object v10, v11

    move v11, v12

    const/16 v13, 0x1f5

    goto :goto_8

    :cond_15
    const/4 v7, 0x0

    :goto_b
    const-string v4, "additional P(Wa): apply MoreRule"

    if-eqz v7, :cond_1b

    if-eqz v9, :cond_1b

    invoke-virtual {v7, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/asks/PEMINFO;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/asks/UnknownStore;->isDevDevice()Z

    move-result v8

    if-eqz v8, :cond_16

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "all target key: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    if-eqz v7, :cond_1b

    iget v8, v7, Lcom/android/server/asks/PEMINFO;->MIN:I

    if-gt v8, v2, :cond_1b

    iget v8, v7, Lcom/android/server/asks/PEMINFO;->MAX:I

    if-gt v2, v8, :cond_1b

    invoke-virtual {v0, v7, v3}, Lcom/android/server/asks/UnknownStore;->checkMoreRule(Lcom/android/server/asks/PEMINFO;Lcom/android/server/asks/RETVALUE;)V

    iget v8, v3, Lcom/android/server/asks/RETVALUE;->status:I

    if-eqz v8, :cond_17

    if-eq v8, v6, :cond_18

    goto/16 :goto_c

    :cond_17
    iget-object v8, v7, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    if-eqz v8, :cond_18

    iget v8, v8, Lcom/android/server/asks/MORERULES;->moreRulePolicy:I

    iput v8, v7, Lcom/android/server/asks/PEMINFO;->policy:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v7, Lcom/android/server/asks/PEMINFO;->policy:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    iget v8, v7, Lcom/android/server/asks/PEMINFO;->policyTarget:I

    if-ne v8, v15, :cond_19

    if-nez p3, :cond_19

    const-string v0, "additional P(Wa) : Target Group(local)"

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iget v2, v7, Lcom/android/server/asks/PEMINFO;->policy:I

    iget v4, v7, Lcom/android/server/asks/PEMINFO;->SA:I

    const/16 v5, 0x1f9

    iget v6, v7, Lcom/android/server/asks/PEMINFO;->policyTarget:I

    iget v7, v7, Lcom/android/server/asks/PEMINFO;->reportedTarget:I

    move-object/from16 v0, p4

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/asks/RETVALUE;->set(IIIIII)V

    return-void

    :cond_19
    if-ne v8, v14, :cond_1a

    if-eqz p3, :cond_1a

    const-string v0, "additional P(Wa) : Target Group(url)"

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iget v2, v7, Lcom/android/server/asks/PEMINFO;->policy:I

    iget v4, v7, Lcom/android/server/asks/PEMINFO;->SA:I

    const/16 v5, 0x1f9

    iget v6, v7, Lcom/android/server/asks/PEMINFO;->policyTarget:I

    iget v7, v7, Lcom/android/server/asks/PEMINFO;->reportedTarget:I

    move-object/from16 v0, p4

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/asks/RETVALUE;->set(IIIIII)V

    return-void

    :cond_1a
    const/16 v9, 0x1f5

    if-ne v8, v9, :cond_1b

    const-string v0, "additional P(Wa) :  Target Group"

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iget v2, v7, Lcom/android/server/asks/PEMINFO;->policy:I

    iget v4, v7, Lcom/android/server/asks/PEMINFO;->SA:I

    const/16 v5, 0x1f9

    iget v6, v7, Lcom/android/server/asks/PEMINFO;->policyTarget:I

    iget v7, v7, Lcom/android/server/asks/PEMINFO;->reportedTarget:I

    move-object/from16 v0, p4

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/asks/RETVALUE;->set(IIIIII)V

    return-void

    :cond_1b
    :goto_c
    const/4 v7, 0x0

    :goto_d
    array-length v8, v1

    if-ge v7, v8, :cond_22

    iget-object v8, v0, Lcom/android/server/asks/UnknownStore;->warningPermissions:Ljava/util/HashMap;

    aget-object v9, v1, v7

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_20

    iget-object v8, v0, Lcom/android/server/asks/UnknownStore;->warningPermissions:Ljava/util/HashMap;

    aget-object v9, v1, v7

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/asks/PEMINFO;

    iget v9, v8, Lcom/android/server/asks/PEMINFO;->MIN:I

    if-gt v9, v2, :cond_20

    iget v9, v8, Lcom/android/server/asks/PEMINFO;->MAX:I

    if-gt v2, v9, :cond_20

    invoke-virtual {v0, v8, v3}, Lcom/android/server/asks/UnknownStore;->checkMoreRule(Lcom/android/server/asks/PEMINFO;Lcom/android/server/asks/RETVALUE;)V

    iget v9, v3, Lcom/android/server/asks/RETVALUE;->status:I

    if-eqz v9, :cond_1c

    if-eq v9, v6, :cond_1d

    goto/16 :goto_e

    :cond_1c
    iget-object v9, v8, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    if-eqz v9, :cond_1d

    iget v9, v9, Lcom/android/server/asks/MORERULES;->moreRulePolicy:I

    iput v9, v8, Lcom/android/server/asks/PEMINFO;->policy:I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v8, Lcom/android/server/asks/PEMINFO;->policy:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    iget v9, v8, Lcom/android/server/asks/PEMINFO;->policyTarget:I

    if-ne v9, v15, :cond_1e

    if-nez p3, :cond_1e

    const-string v0, "additional P(Wa) : Target(local)"

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iget v2, v8, Lcom/android/server/asks/PEMINFO;->policy:I

    iget v4, v8, Lcom/android/server/asks/PEMINFO;->SA:I

    const/16 v5, 0x1f9

    iget v6, v8, Lcom/android/server/asks/PEMINFO;->policyTarget:I

    iget v7, v8, Lcom/android/server/asks/PEMINFO;->reportedTarget:I

    move-object/from16 v0, p4

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/asks/RETVALUE;->set(IIIIII)V

    return-void

    :cond_1e
    if-ne v9, v14, :cond_1f

    if-eqz p3, :cond_1f

    const-string v0, "additional P(Wa) : Target(url)"

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iget v2, v8, Lcom/android/server/asks/PEMINFO;->policy:I

    iget v4, v8, Lcom/android/server/asks/PEMINFO;->SA:I

    const/16 v5, 0x1f9

    iget v6, v8, Lcom/android/server/asks/PEMINFO;->policyTarget:I

    iget v7, v8, Lcom/android/server/asks/PEMINFO;->reportedTarget:I

    move-object/from16 v0, p4

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/asks/RETVALUE;->set(IIIIII)V

    return-void

    :cond_1f
    const/16 v10, 0x1f5

    if-ne v9, v10, :cond_21

    const-string v0, "additional P(Wa) : Target"

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iget v2, v8, Lcom/android/server/asks/PEMINFO;->policy:I

    iget v4, v8, Lcom/android/server/asks/PEMINFO;->SA:I

    const/16 v5, 0x1f9

    iget v6, v8, Lcom/android/server/asks/PEMINFO;->policyTarget:I

    iget v7, v8, Lcom/android/server/asks/PEMINFO;->reportedTarget:I

    move-object/from16 v0, p4

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/asks/RETVALUE;->set(IIIIII)V

    return-void

    :cond_20
    :goto_e
    const/16 v10, 0x1f5

    :cond_21
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_d

    :cond_22
    iget-object v1, v0, Lcom/android/server/asks/UnknownStore;->defaultCertPolicy:Lcom/android/server/asks/PKGINFO;

    if-eqz v1, :cond_23

    const-string v1, "additional P : Default"

    invoke-static {v5, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iget-object v0, v0, Lcom/android/server/asks/UnknownStore;->defaultCertPolicy:Lcom/android/server/asks/PKGINFO;

    iget v2, v0, Lcom/android/server/asks/PKGINFO;->policy:I

    iget v4, v0, Lcom/android/server/asks/PKGINFO;->SA:I

    iget v5, v0, Lcom/android/server/asks/PKGINFO;->isExecuteBlock:I

    iget v6, v0, Lcom/android/server/asks/PKGINFO;->policyTarget:I

    iget v7, v0, Lcom/android/server/asks/PKGINFO;->reportedTarget:I

    move-object/from16 v0, p4

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/asks/RETVALUE;->set(IIIIII)V

    return-void

    :cond_23
    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p4

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/asks/RETVALUE;->set(IIIIII)V

    :cond_24
    return-void
.end method

.method public checkRegexTarget(Ljava/lang/String;Lcom/android/server/asks/RETVALUE;Z)Z
    .locals 10

    invoke-virtual {p0}, Lcom/android/server/asks/UnknownStore;->isDevDevice()Z

    move-result v0

    const-string v1, "PackageInformationStore"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " checkRegexTarget() :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", isDomain : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_9

    const/4 v2, 0x0

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/android/server/asks/UnknownStore;->regexDomainRule:Ljava/util/ArrayList;

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lcom/android/server/asks/UnknownStore;->regexPackageRule:Ljava/util/ArrayList;

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/ArrayList;

    goto :goto_0

    :cond_2
    move-object p3, v2

    :goto_0
    if-eqz p3, :cond_9

    move v3, v0

    :goto_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_8

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/16 v5, 0x20

    invoke-static {v4, v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {p0}, Lcom/android/server/asks/UnknownStore;->isDevDevice()Z

    move-result p3

    if-eqz p3, :cond_3

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " hit :"

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " by "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object p1, p0, Lcom/android/server/asks/UnknownStore;->certPolicies:Ljava/util/HashMap;

    const/4 p3, 0x1

    const-string v3, "ALL"

    if-eqz p1, :cond_6

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p0, p0, Lcom/android/server/asks/UnknownStore;->certPolicies:Ljava/util/HashMap;

    invoke-virtual {p0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    if-eqz p0, :cond_5

    invoke-virtual {p0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/android/server/asks/PKGINFO;

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/android/server/asks/PKGINFO;

    :cond_5
    :goto_2
    if-eqz v2, :cond_8

    const-string p0, "checkPolicyWithDetail() : policy Target"

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    iget v5, v2, Lcom/android/server/asks/PKGINFO;->policy:I

    iget v6, v2, Lcom/android/server/asks/PKGINFO;->SA:I

    iget v7, v2, Lcom/android/server/asks/PKGINFO;->isExecuteBlock:I

    iget v8, v2, Lcom/android/server/asks/PKGINFO;->policyTarget:I

    iget v9, v2, Lcom/android/server/asks/PKGINFO;->reportedTarget:I

    move-object v3, p2

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/asks/RETVALUE;->set(IIIIII)V

    :goto_3
    move v0, p3

    goto :goto_4

    :cond_6
    iget-object p1, p0, Lcom/android/server/asks/UnknownStore;->certPolicies:Ljava/util/HashMap;

    if-eqz p1, :cond_8

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p0, p0, Lcom/android/server/asks/UnknownStore;->certPolicies:Ljava/util/HashMap;

    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    if-eqz p0, :cond_8

    invoke-virtual {p0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/asks/PKGINFO;

    if-eqz p0, :cond_8

    const-string p1, "checkPolicyWithDetail() : ALL Target"

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/server/asks/PKGINFO;->policy:I

    iget v5, p0, Lcom/android/server/asks/PKGINFO;->SA:I

    iget v6, p0, Lcom/android/server/asks/PKGINFO;->isExecuteBlock:I

    iget v7, p0, Lcom/android/server/asks/PKGINFO;->policyTarget:I

    iget v8, p0, Lcom/android/server/asks/PKGINFO;->reportedTarget:I

    move-object v2, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/asks/RETVALUE;->set(IIIIII)V

    goto :goto_3

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_8
    :goto_4
    if-nez v0, :cond_9

    const-string p0, "Regex Policy does not match."

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return v0
.end method

.method public getExceptList()Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/android/server/asks/UnknownStore;->exceptPkgName:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getExcuteBlockList()Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/android/server/asks/UnknownStore;->executeBlockPkgName:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/asks/UnknownStore;->KEY_VALUE:Ljava/lang/String;

    return-object p0
.end method

.method public getRegexDomainList()Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/android/server/asks/UnknownStore;->regexDomainRule:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getUnknownAppsList()Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/android/server/asks/UnknownStore;->unknownAppsList:Ljava/util/HashMap;

    return-object p0
.end method

.method public final isDevDevice()Z
    .locals 1

    const-string/jumbo p0, "ro.boot.em.status"

    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "0x1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public setBaseCodePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/asks/UnknownStore;->BASE_CODE_PATH:Ljava/lang/String;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/asks/UnknownStore;->KEY_VALUE:Ljava/lang/String;

    return-void
.end method

.method public setPkgName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/asks/UnknownStore;->PKGNAME:Ljava/lang/String;

    return-void
.end method

.method public setPkgSigHash(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/asks/UnknownStore;->PKGSIGHASH:Ljava/lang/String;

    return-void
.end method

.method public setSigHash(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/asks/UnknownStore;->SIGHASH:Ljava/lang/String;

    return-void
.end method
