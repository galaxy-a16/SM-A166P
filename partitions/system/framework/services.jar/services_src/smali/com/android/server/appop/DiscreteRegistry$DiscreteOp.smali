.class public final Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;
.super Ljava/lang/Object;
.source "DiscreteRegistry.java"


# instance fields
.field public mAttributedOps:Landroid/util/ArrayMap;

.field public final synthetic this$0:Lcom/android/server/appop/DiscreteRegistry;


# direct methods
.method public static synthetic $r8$lambda$VYbETqW-WT_cFnhptZZQXxd7GD8(Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;)I
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->lambda$deserialize$0(Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mapplyToHistory(Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;ILandroid/util/ArrayMap;)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->applyToHistory(Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;ILandroid/util/ArrayMap;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdump(Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->dump(Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mfilter(Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;JJILjava/lang/String;IILjava/lang/String;ILandroid/util/ArrayMap;)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p11}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->filter(JJILjava/lang/String;IILjava/lang/String;ILandroid/util/ArrayMap;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$moffsetHistory(Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;J)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->offsetHistory(J)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/appop/DiscreteRegistry;)V
    .locals 0

    .line 1057
    iput-object p1, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->this$0:Lcom/android/server/appop/DiscreteRegistry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1058
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    return-void
.end method

.method public static synthetic lambda$deserialize$0(Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;)I
    .locals 3

    .line 1247
    iget-wide v0, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteTime:J

    iget-wide p0, p1, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteTime:J

    cmp-long v2, v0, p0

    if-gez v2, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    cmp-long p0, v0, p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    return p0
.end method


# virtual methods
.method public addDiscreteAccess(Ljava/lang/String;IIJJII)V
    .locals 14

    .line 1120
    invoke-virtual {p0, p1}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->getOrCreateDiscreteOpEventsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1123
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-lez v1, :cond_6

    add-int/lit8 v2, v1, -0x1

    .line 1126
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    .line 1127
    iget-wide v3, v2, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteTime:J

    invoke-static {v3, v4}, Lcom/android/server/appop/DiscreteRegistry;->-$$Nest$smdiscretizeTimeStamp(J)J

    move-result-wide v3

    invoke-static/range {p4 .. p5}, Lcom/android/server/appop/DiscreteRegistry;->-$$Nest$smdiscretizeTimeStamp(J)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    goto :goto_1

    .line 1130
    :cond_0
    iget v3, v2, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mOpFlag:I

    move/from16 v11, p2

    if-ne v3, v11, :cond_2

    iget v3, v2, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mUidState:I

    move/from16 v10, p3

    if-ne v3, v10, :cond_3

    iget v3, v2, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionFlags:I

    move/from16 v12, p8

    if-ne v3, v12, :cond_4

    iget v3, v2, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionChainId:I

    move/from16 v13, p9

    if-ne v3, v13, :cond_5

    .line 1133
    invoke-static/range {p6 .. p7}, Lcom/android/server/appop/DiscreteRegistry;->-$$Nest$smdiscretizeDuration(J)J

    move-result-wide v3

    iget-wide v5, v2, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteDuration:J

    invoke-static {v5, v6}, Lcom/android/server/appop/DiscreteRegistry;->-$$Nest$smdiscretizeDuration(J)J

    move-result-wide v5

    cmp-long v2, v3, v5

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    return-void

    :cond_2
    move/from16 v10, p3

    :cond_3
    move/from16 v12, p8

    :cond_4
    move/from16 v13, p9

    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_6
    :goto_1
    move/from16 v11, p2

    move/from16 v10, p3

    move/from16 v12, p8

    move/from16 v13, p9

    .line 1141
    :goto_2
    new-instance v2, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    move-object v3, p0

    iget-object v5, v3, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->this$0:Lcom/android/server/appop/DiscreteRegistry;

    move-object v4, v2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move/from16 v10, p3

    move/from16 v11, p2

    move/from16 v12, p8

    move/from16 v13, p9

    invoke-direct/range {v4 .. v13}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;-><init>(Lcom/android/server/appop/DiscreteRegistry;JJIIII)V

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public final applyToHistory(Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;ILandroid/util/ArrayMap;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    .line 1157
    iget-object v2, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    .line 1159
    iget-object v5, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1160
    iget-object v6, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    move-object v15, v6

    check-cast v15, Ljava/util/List;

    .line 1161
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v13, :cond_1

    .line 1163
    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v12, v6

    check-cast v12, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    .line 1165
    iget v6, v12, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionChainId:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    if-eqz v1, :cond_0

    .line 1167
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v11, v6

    check-cast v11, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;

    if-eqz v11, :cond_0

    .line 1168
    invoke-virtual {v11}, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->isComplete()Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v11

    move-object/from16 v7, p3

    move/from16 v8, p2

    move-object v9, v5

    move/from16 v10, p4

    move-object v3, v11

    move-object v11, v12

    .line 1169
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->isStart(Ljava/lang/String;ILjava/lang/String;ILcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v3, v3, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->mLastVisibleEvent:Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;

    if-eqz v3, :cond_0

    .line 1172
    new-instance v6, Landroid/app/AppOpsManager$OpEventProxyInfo;

    iget v7, v3, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;->mUid:I

    iget-object v8, v3, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;->mPkgName:Ljava/lang/String;

    iget-object v3, v3, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;->mAttributionTag:Ljava/lang/String;

    invoke-direct {v6, v7, v8, v3}, Landroid/app/AppOpsManager$OpEventProxyInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v17, v6

    goto :goto_2

    :cond_0
    const/4 v3, 0x0

    move-object/from16 v17, v3

    .line 1176
    :goto_2
    iget v11, v12, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mUidState:I

    iget v3, v12, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mOpFlag:I

    iget-wide v6, v12, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteTime:J

    .line 1177
    invoke-static {v6, v7}, Lcom/android/server/appop/DiscreteRegistry;->-$$Nest$smdiscretizeTimeStamp(J)J

    move-result-wide v18

    iget-wide v6, v12, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteDuration:J

    .line 1178
    invoke-static {v6, v7}, Lcom/android/server/appop/DiscreteRegistry;->-$$Nest$smdiscretizeDuration(J)J

    move-result-wide v20

    move-object/from16 v6, p1

    move/from16 v7, p4

    move/from16 v8, p2

    move-object/from16 v9, p3

    move-object v10, v5

    move v12, v3

    move v3, v13

    move/from16 v22, v14

    move-wide/from16 v13, v18

    move-object/from16 v18, v15

    move-wide/from16 v15, v20

    .line 1176
    invoke-virtual/range {v6 .. v17}, Landroid/app/AppOpsManager$HistoricalOps;->addDiscreteAccess(IILjava/lang/String;Ljava/lang/String;IIJJLandroid/app/AppOpsManager$OpEventProxyInfo;)V

    add-int/lit8 v14, v22, 0x1

    move v13, v3

    move-object/from16 v15, v18

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method public deserialize(Lcom/android/modules/utils/TypedXmlPullParser;J)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1221
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v2

    .line 1222
    :cond_0
    :goto_0
    invoke-static {v1, v2}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "a"

    .line 1223
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "at"

    const/4 v4, 0x0

    .line 1224
    invoke-interface {v1, v4, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1225
    invoke-virtual {v0, v3}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->getOrCreateDiscreteOpEventsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 1227
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v5

    .line 1228
    :cond_1
    :goto_1
    invoke-static {v1, v5}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "e"

    .line 1229
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string/jumbo v6, "nt"

    .line 1230
    invoke-interface {v1, v4, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v9

    const-string/jumbo v6, "nd"

    const-wide/16 v7, -0x1

    .line 1231
    invoke-interface {v1, v4, v6, v7, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v11

    const-string/jumbo v6, "us"

    .line 1233
    invoke-interface {v1, v4, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    const-string v6, "f"

    .line 1234
    invoke-interface {v1, v4, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    const-string v6, "af"

    const/4 v7, 0x0

    .line 1235
    invoke-interface {v1, v4, v6, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v15

    const-string v6, "ci"

    const/4 v7, -0x1

    .line 1237
    invoke-interface {v1, v4, v6, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v16

    add-long v6, v9, v11

    cmp-long v6, v6, p2

    if-gez v6, :cond_2

    goto :goto_1

    .line 1242
    :cond_2
    new-instance v6, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    iget-object v8, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->this$0:Lcom/android/server/appop/DiscreteRegistry;

    move-object v7, v6

    invoke-direct/range {v7 .. v16}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;-><init>(Lcom/android/server/appop/DiscreteRegistry;JJIIII)V

    .line 1244
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1247
    :cond_3
    new-instance v4, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;I)V
    .locals 9

    .line 1185
    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 1187
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Attribution: "

    .line 1188
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1189
    iget-object v3, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1190
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1191
    iget-object v3, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1192
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge p5, v5, :cond_0

    move v5, v1

    goto :goto_1

    :cond_0
    sub-int v5, v4, p5

    .line 1193
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    :goto_1
    if-ge v5, v4, :cond_1

    .line 1195
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, p1, p2, p3, v7}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->-$$Nest$mdump(Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final filter(JJILjava/lang/String;IILjava/lang/String;ILandroid/util/ArrayMap;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p6

    and-int/lit8 v2, p5, 0x4

    if-eqz v2, :cond_0

    .line 1081
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 1083
    invoke-virtual {p0, v1}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->getOrCreateDiscreteOpEventsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 1082
    invoke-virtual {v2, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1084
    iput-object v2, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    .line 1087
    :cond_0
    iget-object v1, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 1089
    iget-object v2, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1090
    iget-object v3, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/util/List;

    .line 1091
    iget-object v3, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    .line 1092
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Ljava/lang/String;

    move-wide/from16 v5, p1

    move-wide/from16 v7, p3

    move/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    move-object/from16 v14, p11

    .line 1091
    invoke-static/range {v4 .. v14}, Lcom/android/server/appop/DiscreteRegistry;->-$$Nest$smfilterEventsList(Ljava/util/List;JJIILjava/lang/String;ILjava/lang/String;Landroid/util/ArrayMap;)Ljava/util/List;

    move-result-object v3

    .line 1094
    iget-object v4, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1095
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 1096
    iget-object v2, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final getOrCreateDiscreteOpEventsList(Ljava/lang/String;)Ljava/util/List;
    .locals 1

    .line 1146
    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 1148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1149
    iget-object p0, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public isEmpty()Z
    .locals 0

    .line 1062
    iget-object p0, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public merge(Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;)V
    .locals 6

    .line 1066
    iget-object v0, p1, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1068
    iget-object v2, p1, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1069
    iget-object v3, p1, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1070
    invoke-virtual {p0, v2}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->getOrCreateDiscreteOpEventsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 1071
    iget-object v5, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-static {v4, v3}, Lcom/android/server/appop/DiscreteRegistry;->-$$Nest$smstableListMerge(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final offsetHistory(J)V
    .locals 18

    move-object/from16 v0, p0

    .line 1102
    iget-object v1, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 1104
    iget-object v4, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1106
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_0

    .line 1108
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    .line 1109
    new-instance v15, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    iget-object v9, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->this$0:Lcom/android/server/appop/DiscreteRegistry;

    iget-wide v10, v7, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteTime:J

    sub-long v10, v10, p1

    iget-wide v12, v7, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteDuration:J

    iget v14, v7, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mUidState:I

    iget v8, v7, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mOpFlag:I

    iget v2, v7, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionFlags:I

    iget v7, v7, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionChainId:I

    move/from16 v16, v8

    move-object v8, v15

    move-object v0, v15

    move/from16 v15, v16

    move/from16 v16, v2

    move/from16 v17, v7

    invoke-direct/range {v8 .. v17}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;-><init>(Lcom/android/server/appop/DiscreteRegistry;JJIIII)V

    invoke-interface {v4, v6, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public serialize(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 10

    .line 1202
    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    const/4 v3, 0x0

    const-string v4, "a"

    .line 1204
    invoke-interface {p1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1205
    iget-object v5, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 1207
    iget-object v5, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "at"

    invoke-interface {p1, v3, v6, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1209
    :cond_0
    iget-object v5, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 1210
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    move v7, v1

    :goto_1
    if-ge v7, v6, :cond_1

    const-string v8, "e"

    .line 1212
    invoke-interface {p1, v3, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1213
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    invoke-static {v9, p1}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->-$$Nest$mserialize(Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 1214
    invoke-interface {p1, v3, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1216
    :cond_1
    invoke-interface {p1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
