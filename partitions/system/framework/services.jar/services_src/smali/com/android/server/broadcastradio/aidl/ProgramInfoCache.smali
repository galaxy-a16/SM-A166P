.class public final Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;
.super Ljava/lang/Object;
.source "ProgramInfoCache.java"


# instance fields
.field public mComplete:Z

.field public final mFilter:Landroid/hardware/radio/ProgramList$Filter;

.field public final mProgramInfoMap:Ljava/util/Map;


# direct methods
.method public static synthetic $r8$lambda$C2M46MzABR_Xce6gk28tXmNO_5c(Ljava/lang/StringBuilder;Landroid/hardware/radio/ProgramSelector$Identifier;Landroid/hardware/radio/RadioManager$ProgramInfo;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->lambda$toString$0(Ljava/lang/StringBuilder;Landroid/hardware/radio/ProgramSelector$Identifier;Landroid/hardware/radio/RadioManager$ProgramInfo;)V

    return-void
.end method

.method public constructor <init>(Landroid/hardware/radio/ProgramList$Filter;)V
    .locals 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mProgramInfoMap:Ljava/util/Map;

    const/4 v0, 0x1

    .line 66
    iput-boolean v0, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mComplete:Z

    .line 75
    iput-object p1, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mFilter:Landroid/hardware/radio/ProgramList$Filter;

    return-void
.end method

.method public varargs constructor <init>(Landroid/hardware/radio/ProgramList$Filter;Z[Landroid/hardware/radio/RadioManager$ProgramInfo;)V
    .locals 2

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mProgramInfoMap:Ljava/util/Map;

    .line 81
    iput-object p1, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mFilter:Landroid/hardware/radio/ProgramList$Filter;

    .line 82
    iput-boolean p2, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mComplete:Z

    const/4 p1, 0x0

    .line 83
    :goto_0
    array-length p2, p3

    if-ge p1, p2, :cond_0

    .line 84
    iget-object p2, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mProgramInfoMap:Ljava/util/Map;

    aget-object v0, p3, p1

    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getSelector()Landroid/hardware/radio/ProgramSelector;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/radio/ProgramSelector;->getPrimaryId()Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v0

    aget-object v1, p3, p1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static buildChunks(ZZLjava/util/Collection;ILjava/util/Collection;I)Ljava/util/List;
    .locals 10

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    move-object p4, v0

    :cond_0
    if-eqz p2, :cond_1

    .line 264
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-static {v1, p3}, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->roundUpFraction(II)I

    move-result p3

    .line 263
    invoke-static {p0, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    goto :goto_0

    :cond_1
    move p3, p0

    :goto_0
    if-eqz p4, :cond_2

    .line 267
    invoke-interface {p4}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-static {v1, p5}, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->roundUpFraction(II)I

    move-result p5

    invoke-static {p3, p5}, Ljava/lang/Math;->max(II)I

    move-result p3

    :cond_2
    if-nez p3, :cond_3

    .line 270
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_3
    const/4 p5, 0x0

    if-eqz p2, :cond_4

    .line 280
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-static {v1, p3}, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->roundUpFraction(II)I

    move-result v1

    .line 281
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    goto :goto_1

    :cond_4
    move v1, p5

    move-object p2, v0

    :goto_1
    if-eqz p4, :cond_5

    .line 284
    invoke-interface {p4}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {v0, p3}, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->roundUpFraction(II)I

    move-result v0

    .line 285
    invoke-interface {p4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p4

    goto :goto_2

    :cond_5
    move-object p4, v0

    move v0, p5

    .line 287
    :goto_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p3}, Ljava/util/ArrayList;-><init>(I)V

    move v3, p5

    :goto_3
    if-ge v3, p3, :cond_a

    .line 289
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 290
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    if-eqz p2, :cond_6

    move v6, p5

    :goto_4
    if-ge v6, v1, :cond_6

    .line 292
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 293
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/radio/RadioManager$ProgramInfo;

    invoke-virtual {v4, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_6
    if-eqz p4, :cond_7

    move v6, p5

    :goto_5
    if-ge v6, v0, :cond_7

    .line 297
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 298
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-virtual {v5, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 301
    :cond_7
    new-instance v6, Landroid/hardware/radio/ProgramList$Chunk;

    const/4 v7, 0x1

    if-eqz p0, :cond_8

    if-nez v3, :cond_8

    move v8, v7

    goto :goto_6

    :cond_8
    move v8, p5

    :goto_6
    if-eqz p1, :cond_9

    add-int/lit8 v9, p3, -0x1

    if-ne v3, v9, :cond_9

    goto :goto_7

    :cond_9
    move v7, p5

    :goto_7
    invoke-direct {v6, v8, v7, v4, v5}, Landroid/hardware/radio/ProgramList$Chunk;-><init>(ZZLjava/util/Set;Ljava/util/Set;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_a
    return-object v2
.end method

.method public static synthetic lambda$toString$0(Ljava/lang/StringBuilder;Landroid/hardware/radio/ProgramSelector$Identifier;Landroid/hardware/radio/RadioManager$ProgramInfo;)V
    .locals 0

    const-string p1, ", "

    .line 101
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static roundUpFraction(II)I
    .locals 1

    .line 249
    div-int v0, p0, p1

    rem-int/2addr p0, p1

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method


# virtual methods
.method public filterAndApplyChunk(Landroid/hardware/radio/ProgramList$Chunk;)Ljava/util/List;
    .locals 2

    const/16 v0, 0x64

    const/16 v1, 0x1f4

    .line 185
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->filterAndApplyChunkInternal(Landroid/hardware/radio/ProgramList$Chunk;II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public filterAndApplyChunkInternal(Landroid/hardware/radio/ProgramList$Chunk;II)Ljava/util/List;
    .locals 7

    .line 193
    invoke-virtual {p1}, Landroid/hardware/radio/ProgramList$Chunk;->isPurge()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mProgramInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 197
    :cond_0
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 198
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 199
    invoke-virtual {p1}, Landroid/hardware/radio/ProgramList$Chunk;->getModified()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioManager$ProgramInfo;

    .line 200
    invoke-virtual {v1}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getSelector()Landroid/hardware/radio/ProgramSelector;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/radio/ProgramSelector;->getPrimaryId()Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v2

    .line 201
    invoke-virtual {p0, v2}, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->passesFilter(Landroid/hardware/radio/ProgramSelector$Identifier;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->shouldIncludeInModified(Landroid/hardware/radio/RadioManager$ProgramInfo;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    .line 204
    :cond_2
    iget-object v4, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mProgramInfoMap:Ljava/util/Map;

    invoke-interface {v4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 207
    :cond_3
    invoke-virtual {p1}, Landroid/hardware/radio/ProgramList$Chunk;->getRemoved()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 208
    iget-object v2, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mProgramInfoMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 209
    iget-object v2, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mProgramInfoMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    invoke-interface {v5, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 213
    :cond_5
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mComplete:Z

    invoke-virtual {p1}, Landroid/hardware/radio/ProgramList$Chunk;->isComplete()Z

    move-result v1

    if-ne v0, v1, :cond_6

    .line 214
    invoke-virtual {p1}, Landroid/hardware/radio/ProgramList$Chunk;->isPurge()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 217
    :cond_6
    invoke-virtual {p1}, Landroid/hardware/radio/ProgramList$Chunk;->isComplete()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mComplete:Z

    .line 218
    invoke-virtual {p1}, Landroid/hardware/radio/ProgramList$Chunk;->isPurge()Z

    move-result v1

    iget-boolean v2, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mComplete:Z

    move v4, p2

    move v6, p3

    invoke-static/range {v1 .. v6}, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->buildChunks(ZZLjava/util/Collection;ILjava/util/Collection;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public filterAndUpdateFromInternal(Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;Z)Ljava/util/List;
    .locals 2

    const/16 v0, 0x64

    const/16 v1, 0x1f4

    .line 142
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->filterAndUpdateFromInternal(Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;ZII)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public filterAndUpdateFromInternal(Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;ZII)Ljava/util/List;
    .locals 6

    if-eqz p2, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mProgramInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mProgramInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p2, 0x1

    :cond_1
    move v0, p2

    .line 158
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 159
    new-instance v4, Landroid/util/ArraySet;

    iget-object p2, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mProgramInfoMap:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-direct {v4, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 161
    iget-object p2, p1, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mProgramInfoMap:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 162
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 163
    invoke-virtual {p0, v3}, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->passesFilter(Landroid/hardware/radio/ProgramSelector$Identifier;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    .line 166
    :cond_2
    invoke-interface {v4, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 168
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioManager$ProgramInfo;

    .line 169
    invoke-virtual {p0, v1}, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->shouldIncludeInModified(Landroid/hardware/radio/RadioManager$ProgramInfo;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_0

    .line 172
    :cond_3
    iget-object v5, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mProgramInfoMap:Ljava/util/Map;

    invoke-interface {v5, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 175
    :cond_4
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 176
    iget-object v3, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mProgramInfoMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 178
    :cond_5
    iget-boolean v1, p1, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mComplete:Z

    iput-boolean v1, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mComplete:Z

    move v3, p3

    move v5, p4

    .line 179
    invoke-static/range {v0 .. v5}, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->buildChunks(ZZLjava/util/Collection;ILjava/util/Collection;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getFilter()Landroid/hardware/radio/ProgramList$Filter;
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mFilter:Landroid/hardware/radio/ProgramList$Filter;

    return-object p0
.end method

.method public final passesFilter(Landroid/hardware/radio/ProgramSelector$Identifier;)Z
    .locals 4

    .line 223
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mFilter:Landroid/hardware/radio/ProgramList$Filter;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 226
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/radio/ProgramList$Filter;->getIdentifierTypes()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mFilter:Landroid/hardware/radio/ProgramList$Filter;

    .line 227
    invoke-virtual {v0}, Landroid/hardware/radio/ProgramList$Filter;->getIdentifierTypes()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Landroid/hardware/radio/ProgramSelector$Identifier;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mFilter:Landroid/hardware/radio/ProgramList$Filter;

    invoke-virtual {v0}, Landroid/hardware/radio/ProgramList$Filter;->getIdentifiers()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mFilter:Landroid/hardware/radio/ProgramList$Filter;

    invoke-virtual {v0}, Landroid/hardware/radio/ProgramList$Filter;->getIdentifiers()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    .line 233
    :cond_2
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mFilter:Landroid/hardware/radio/ProgramList$Filter;

    invoke-virtual {p0}, Landroid/hardware/radio/ProgramList$Filter;->areCategoriesIncluded()Z

    move-result p0

    if-nez p0, :cond_4

    invoke-virtual {p1}, Landroid/hardware/radio/ProgramSelector$Identifier;->isCategoryType()Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    move v1, v2

    :cond_4
    :goto_0
    return v1
.end method

.method public final shouldIncludeInModified(Landroid/hardware/radio/RadioManager$ProgramInfo;)Z
    .locals 2

    .line 237
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mProgramInfoMap:Ljava/util/Map;

    .line 238
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getSelector()Landroid/hardware/radio/ProgramSelector;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/radio/ProgramSelector;->getPrimaryId()Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v1

    .line 237
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/RadioManager$ProgramInfo;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 242
    :cond_0
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mFilter:Landroid/hardware/radio/ProgramList$Filter;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/hardware/radio/ProgramList$Filter;->areModificationsExcluded()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 245
    :cond_1
    invoke-virtual {v0, p1}, Landroid/hardware/radio/RadioManager$ProgramInfo;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0
.end method

.method public toProgramInfoList()Ljava/util/List;
    .locals 1

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mProgramInfoMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ProgramInfoCache(mComplete = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    iget-boolean v1, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mComplete:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mFilter = "

    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    iget-object v1, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mFilter:Landroid/hardware/radio/ProgramList$Filter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mProgramInfoMap = ["

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mProgramInfoMap:Ljava/util/Map;

    new-instance v1, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache$$ExternalSyntheticLambda0;-><init>(Ljava/lang/StringBuilder;)V

    invoke-interface {p0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    const-string p0, "])"

    .line 104
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateFromHalProgramListChunk(Landroid/hardware/broadcastradio/ProgramListChunk;)V
    .locals 6

    .line 119
    iget-boolean v0, p1, Landroid/hardware/broadcastradio/ProgramListChunk;->purge:Z

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mProgramInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 122
    :goto_0
    iget-object v2, p1, Landroid/hardware/broadcastradio/ProgramListChunk;->modified:[Landroid/hardware/broadcastradio/ProgramInfo;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 123
    aget-object v2, v2, v1

    .line 124
    invoke-static {v2}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->programInfoFromHalProgramInfo(Landroid/hardware/broadcastradio/ProgramInfo;)Landroid/hardware/radio/RadioManager$ProgramInfo;

    move-result-object v2

    if-nez v2, :cond_1

    .line 126
    iget-object v3, p1, Landroid/hardware/broadcastradio/ProgramListChunk;->modified:[Landroid/hardware/broadcastradio/ProgramInfo;

    aget-object v3, v3, v1

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "BcRadioAidlSrv.cache"

    const-string v5, "Program info in program info %s in chunk is not valid"

    invoke-static {v4, v5, v3}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    :cond_1
    iget-object v3, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mProgramInfoMap:Ljava/util/Map;

    invoke-virtual {v2}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getSelector()Landroid/hardware/radio/ProgramSelector;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/radio/ProgramSelector;->getPrimaryId()Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 131
    :cond_2
    iget-object v1, p1, Landroid/hardware/broadcastradio/ProgramListChunk;->removed:[Landroid/hardware/broadcastradio/ProgramIdentifier;

    if-eqz v1, :cond_3

    .line 132
    :goto_1
    iget-object v1, p1, Landroid/hardware/broadcastradio/ProgramListChunk;->removed:[Landroid/hardware/broadcastradio/ProgramIdentifier;

    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 133
    iget-object v2, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mProgramInfoMap:Ljava/util/Map;

    aget-object v1, v1, v0

    .line 134
    invoke-static {v1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->identifierFromHalProgramIdentifier(Landroid/hardware/broadcastradio/ProgramIdentifier;)Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v1

    .line 133
    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 137
    :cond_3
    iget-boolean p1, p1, Landroid/hardware/broadcastradio/ProgramListChunk;->complete:Z

    iput-boolean p1, p0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mComplete:Z

    return-void
.end method
