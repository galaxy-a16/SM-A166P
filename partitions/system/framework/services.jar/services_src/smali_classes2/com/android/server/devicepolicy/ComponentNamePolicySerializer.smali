.class public final Lcom/android/server/devicepolicy/ComponentNamePolicySerializer;
.super Lcom/android/server/devicepolicy/PolicySerializer;
.source "ComponentNamePolicySerializer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/android/server/devicepolicy/PolicySerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/ComponentNamePolicyValue;
    .locals 2

    const-string/jumbo p0, "package-name"

    const/4 v0, 0x0

    .line 52
    invoke-interface {p1, v0, p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "class-name"

    .line 54
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    new-instance v0, Landroid/app/admin/ComponentNamePolicyValue;

    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p0, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/app/admin/ComponentNamePolicyValue;-><init>(Landroid/content/ComponentName;)V

    return-object v0

    :cond_1
    :goto_0
    const-string p0, "ComponentNamePolicySerializer"

    const-string p1, "Error parsing ComponentName policy."

    .line 57
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public bridge synthetic readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/PolicyValue;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/ComponentNamePolicySerializer;->readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/ComponentNamePolicyValue;

    move-result-object p0

    return-object p0
.end method

.method public saveToXml(Landroid/app/admin/PolicyKey;Lcom/android/modules/utils/TypedXmlSerializer;Landroid/content/ComponentName;)V
    .locals 1

    .line 42
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p0, "package-name"

    .line 44
    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 43
    invoke-interface {p2, v0, p0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string p0, "class-name"

    .line 46
    invoke-virtual {p3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    .line 45
    invoke-interface {p2, v0, p0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public bridge synthetic saveToXml(Landroid/app/admin/PolicyKey;Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/Object;)V
    .locals 0

    .line 32
    check-cast p3, Landroid/content/ComponentName;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/devicepolicy/ComponentNamePolicySerializer;->saveToXml(Landroid/app/admin/PolicyKey;Lcom/android/modules/utils/TypedXmlSerializer;Landroid/content/ComponentName;)V

    return-void
.end method
