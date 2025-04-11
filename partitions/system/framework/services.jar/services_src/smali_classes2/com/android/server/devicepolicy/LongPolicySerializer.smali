.class public final Lcom/android/server/devicepolicy/LongPolicySerializer;
.super Lcom/android/server/devicepolicy/PolicySerializer;
.source "LongPolicySerializer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/android/server/devicepolicy/PolicySerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/LongPolicyValue;
    .locals 3

    const/4 p0, 0x0

    .line 50
    :try_start_0
    new-instance v0, Landroid/app/admin/LongPolicyValue;

    const-string/jumbo v1, "value"

    .line 51
    invoke-interface {p1, p0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Landroid/app/admin/LongPolicyValue;-><init>(J)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    const-string v0, "LongPolicySerializer"

    const-string v1, "Error parsing Long policy value"

    .line 53
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p0
.end method

.method public bridge synthetic readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/PolicyValue;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/LongPolicySerializer;->readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/LongPolicyValue;

    move-result-object p0

    return-object p0
.end method

.method public saveToXml(Landroid/app/admin/PolicyKey;Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/Long;)V
    .locals 2

    .line 42
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p0, "value"

    .line 43
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/4 p1, 0x0

    invoke-interface {p2, p1, p0, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public bridge synthetic saveToXml(Landroid/app/admin/PolicyKey;Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/Object;)V
    .locals 0

    .line 33
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/devicepolicy/LongPolicySerializer;->saveToXml(Landroid/app/admin/PolicyKey;Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/Long;)V

    return-void
.end method
