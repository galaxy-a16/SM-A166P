.class public abstract Lcom/android/server/enterprise/BlackWhiteListPolicy;
.super Ljava/lang/Object;
.source "BlackWhiteListPolicy.java"


# instance fields
.field public bUpdateToDB:Z

.field public mContext:Landroid/content/Context;

.field public mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field public mEffectiveBlacklist:Ljava/util/List;

.field public mEffectiveWhitelist:Ljava/util/List;

.field public mTable:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/BlackWhiteListPolicy;->mEffectiveBlacklist:Ljava/util/List;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/BlackWhiteListPolicy;->mEffectiveWhitelist:Ljava/util/List;

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/android/server/enterprise/BlackWhiteListPolicy;->bUpdateToDB:Z

    .line 70
    iput-object p1, p0, Lcom/android/server/enterprise/BlackWhiteListPolicy;->mContext:Landroid/content/Context;

    .line 71
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/BlackWhiteListPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 72
    iput-object p2, p0, Lcom/android/server/enterprise/BlackWhiteListPolicy;->mTable:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final addList(Ljava/util/List;Ljava/util/List;)V
    .locals 3

    const/4 v0, 0x0

    .line 349
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 350
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 351
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 352
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 355
    :cond_0
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 358
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->removeDuplicates(Ljava/util/List;)V

    return-void
.end method

.method public addObjectsToBlackList(ILjava/util/List;)Z
    .locals 1

    const-string v0, "black"

    .line 82
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->addObjectsToList(ILjava/util/List;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final addObjectsToList(ILjava/util/List;Ljava/lang/String;)Z
    .locals 8

    .line 155
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->removeDuplicates(Ljava/util/List;)V

    const/4 v0, 0x0

    move v1, v0

    .line 156
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 157
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 158
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "Object"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "adminUid"

    invoke-virtual {v2, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "ListType"

    .line 160
    invoke-virtual {v2, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 163
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-virtual {v6, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v3, p0, Lcom/android/server/enterprise/BlackWhiteListPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v4, p0, Lcom/android/server/enterprise/BlackWhiteListPolicy;->mTable:Ljava/lang/String;

    invoke-virtual {v3, v4, v6, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 171
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->updateEffectivePolicy()V

    const/4 p0, 0x1

    return p0
.end method

.method public addObjectsToWhiteList(ILjava/util/List;)Z
    .locals 1

    const-string/jumbo v0, "white"

    .line 98
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->addObjectsToList(ILjava/util/List;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public clearObjectsFromBlackList(I)Z
    .locals 1

    const-string v0, "black"

    .line 90
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->clearObjectsFromList(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final clearObjectsFromList(ILjava/lang/String;)Z
    .locals 2

    .line 193
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "adminUid"

    .line 194
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "ListType"

    .line 195
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    iget-object p1, p0, Lcom/android/server/enterprise/BlackWhiteListPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object p2, p0, Lcom/android/server/enterprise/BlackWhiteListPolicy;->mTable:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByFields(Ljava/lang/String;Ljava/util/HashMap;)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    const/4 p0, 0x0

    return p0

    .line 199
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->updateEffectivePolicy()V

    const/4 p0, 0x1

    return p0
.end method

.method public clearObjectsFromWhiteList(I)Z
    .locals 1

    const-string/jumbo v0, "white"

    .line 106
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->clearObjectsFromList(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final createEffectiveList(ILjava/util/List;Ljava/util/List;)V
    .locals 3

    .line 258
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 259
    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 260
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "black"

    .line 261
    invoke-virtual {p0, p1, v2, v0}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->getAllObjectsFromList(ILjava/lang/String;Ljava/util/List;)V

    .line 262
    invoke-virtual {p0, p2, v0}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->addList(Ljava/util/List;Ljava/util/List;)V

    const-string/jumbo v0, "white"

    .line 263
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->getAllObjectsFromList(ILjava/lang/String;Ljava/util/List;)V

    .line 264
    invoke-virtual {p0, p3, v1}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->addList(Ljava/util/List;Ljava/util/List;)V

    .line 265
    invoke-virtual {p0, p2, p3}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->subtractList(Ljava/util/List;Ljava/util/List;)V

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "effectiveblacklist for admin "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->logList(Ljava/lang/String;Ljava/util/List;)V

    .line 268
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "effectivewhitelist for admin "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->logList(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public final createEffectiveListAllAdmins(Ljava/util/List;Ljava/util/List;)V
    .locals 7

    .line 282
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 283
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 284
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 285
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 286
    iget-object v2, p0, Lcom/android/server/enterprise/BlackWhiteListPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getAdminUidList()Ljava/util/ArrayList;

    move-result-object v2

    .line 293
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, ": "

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 294
    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->isPolicyActive(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 295
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-virtual {p0, v3, v5, v6}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->createEffectiveList(ILjava/util/List;Ljava/util/List;)V

    .line 298
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-virtual {p0, p1, v5}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->addList(Ljava/util/List;Ljava/util/List;)V

    .line 299
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "finalblacklist after adding admin "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, p1}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->logList(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 306
    :cond_1
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 307
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {p0, v2, v3, v0}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->subtractWhitelistFromOthersBlacklists(ILjava/util/List;Ljava/util/Map;)V

    .line 308
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {p0, p2, v2}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->addList(Ljava/util/List;Ljava/util/List;)V

    .line 309
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finalwhitelist after adding admin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->logList(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public getAllObjectsFromBlackListForAllAdmins()Ljava/util/List;
    .locals 1

    const-string v0, "black"

    .line 94
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->getAllObjectsFromListForAllAdmins(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getAllObjectsFromList(ILjava/lang/String;Ljava/util/List;)V
    .locals 9

    const-string v0, "BlackWhiteListPolicyService"

    const-string v1, "Object"

    .line 204
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 210
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/BlackWhiteListPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v3, p0, Lcom/android/server/enterprise/BlackWhiteListPolicy;->mTable:Ljava/lang/String;

    const-string v5, "ListType"

    move v4, p1

    move-object v6, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 213
    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 214
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 216
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    .line 215
    invoke-interface {v8, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 217
    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz v8, :cond_1

    .line 224
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 221
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Exception occurred accessing Enterprise db "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v8, :cond_1

    goto :goto_1

    :cond_1
    :goto_2
    const-string p0, "getAllObjectsFromList:"

    .line 227
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :goto_3
    if-eqz v8, :cond_2

    .line 224
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 225
    :cond_2
    throw p0
.end method

.method public final getAllObjectsFromListForAllAdmins(Ljava/lang/String;)Ljava/util/List;
    .locals 5

    .line 232
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 234
    iget-object v1, p0, Lcom/android/server/enterprise/BlackWhiteListPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getAdminUidList()Ljava/util/ArrayList;

    move-result-object v1

    .line 236
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 237
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 238
    invoke-virtual {p0, v2, p1, v3}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->getAllObjectsFromList(ILjava/lang/String;Ljava/util/List;)V

    .line 239
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 240
    new-instance v4, Lcom/samsung/android/knox/ControlInfo;

    invoke-direct {v4}, Lcom/samsung/android/knox/ControlInfo;-><init>()V

    .line 241
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/samsung/android/knox/ControlInfo;->adminPackageName:Ljava/lang/String;

    .line 242
    iput-object v3, v4, Lcom/samsung/android/knox/ControlInfo;->entries:Ljava/util/List;

    .line 243
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string p0, "BlackWhiteListPolicyService"

    const-string p1, "getAllObjectsFromLists:"

    .line 247
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getAllObjectsFromWhiteListForAllAdmins()Ljava/util/List;
    .locals 1

    const-string/jumbo v0, "white"

    .line 110
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->getAllObjectsFromListForAllAdmins(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getEffectiveBlackList()Ljava/util/List;
    .locals 1

    .line 122
    iget-boolean v0, p0, Lcom/android/server/enterprise/BlackWhiteListPolicy;->bUpdateToDB:Z

    if-nez v0, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->updateEffectivePolicy()V

    const/4 v0, 0x1

    .line 124
    iput-boolean v0, p0, Lcom/android/server/enterprise/BlackWhiteListPolicy;->bUpdateToDB:Z

    .line 126
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/BlackWhiteListPolicy;->mEffectiveBlacklist:Ljava/util/List;

    return-object p0
.end method

.method public getEffectiveWhiteList()Ljava/util/List;
    .locals 1

    .line 114
    iget-boolean v0, p0, Lcom/android/server/enterprise/BlackWhiteListPolicy;->bUpdateToDB:Z

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->updateEffectivePolicy()V

    const/4 v0, 0x1

    .line 116
    iput-boolean v0, p0, Lcom/android/server/enterprise/BlackWhiteListPolicy;->bUpdateToDB:Z

    .line 118
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/BlackWhiteListPolicy;->mEffectiveWhitelist:Ljava/util/List;

    return-object p0
.end method

.method public final getPackageNameForUid(I)Ljava/lang/String;
    .locals 0

    .line 334
    iget-object p0, p0, Lcom/android/server/enterprise/BlackWhiteListPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isObjectAllowed(Ljava/lang/String;)Z
    .locals 6

    .line 130
    invoke-virtual {p0}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->getEffectiveWhiteList()Ljava/util/List;

    move-result-object v0

    .line 131
    invoke-virtual {p0}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->getEffectiveBlackList()Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    move v2, v1

    .line 132
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const-string v4, "*"

    const/4 v5, 0x1

    if-ge v2, v3, :cond_2

    .line 133
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 134
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v5

    :cond_2
    move v0, v1

    .line 137
    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 138
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 139
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    return v1

    :cond_5
    return v5
.end method

.method public abstract isPolicyActive(I)Z
.end method

.method public final logList(Ljava/lang/String;Ljava/util/List;)V
    .locals 2

    const/4 p0, 0x0

    .line 371
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_0

    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "logList:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BlackWhiteListPolicyService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public reload()Z
    .locals 1

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lcom/android/server/enterprise/BlackWhiteListPolicy;->bUpdateToDB:Z

    .line 77
    invoke-virtual {p0}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->updateEffectivePolicy()V

    const/4 p0, 0x1

    return p0
.end method

.method public final removeDuplicates(Ljava/util/List;)V
    .locals 0

    .line 325
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 327
    :cond_0
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 328
    invoke-interface {p0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 329
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 330
    invoke-interface {p1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public removeObjectsFromBlackList(ILjava/util/List;)Z
    .locals 1

    const-string v0, "black"

    .line 86
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->removeObjectsFromList(ILjava/util/List;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final removeObjectsFromList(ILjava/util/List;Ljava/lang/String;)Z
    .locals 5

    .line 177
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->removeDuplicates(Ljava/util/List;)V

    const/4 v0, 0x0

    move v1, v0

    .line 178
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 179
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "adminUid"

    .line 180
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "Object"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "ListType"

    .line 182
    invoke-virtual {v2, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    iget-object v3, p0, Lcom/android/server/enterprise/BlackWhiteListPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v4, p0, Lcom/android/server/enterprise/BlackWhiteListPolicy;->mTable:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByFields(Ljava/lang/String;Ljava/util/HashMap;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 187
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->updateEffectivePolicy()V

    const/4 p0, 0x1

    return p0
.end method

.method public removeObjectsFromWhiteList(ILjava/util/List;)Z
    .locals 1

    const-string/jumbo v0, "white"

    .line 102
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->removeObjectsFromList(ILjava/util/List;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final subtractList(Ljava/util/List;Ljava/util/List;)V
    .locals 2

    const/4 p0, 0x0

    .line 338
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_1

    .line 339
    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void

    .line 343
    :cond_0
    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final subtractWhitelistFromOthersBlacklists(ILjava/util/List;Ljava/util/Map;)V
    .locals 2

    .line 363
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 364
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 365
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, p2, v0}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->subtractList(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final updateEffectivePolicy()V
    .locals 2

    .line 317
    iget-object v0, p0, Lcom/android/server/enterprise/BlackWhiteListPolicy;->mEffectiveBlacklist:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/enterprise/BlackWhiteListPolicy;->mEffectiveWhitelist:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/BlackWhiteListPolicy;->createEffectiveListAllAdmins(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
