.class public Lcom/android/server/display/config/UsiVersion;
.super Ljava/lang/Object;
.source "UsiVersion.java"


# instance fields
.field public majorVersion:Ljava/math/BigInteger;

.field public minorVersion:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/UsiVersion;
    .locals 4

    .line 38
    new-instance v0, Lcom/android/server/display/config/UsiVersion;

    invoke-direct {v0}, Lcom/android/server/display/config/UsiVersion;-><init>()V

    .line 40
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 42
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq v1, v2, :cond_3

    if-eq v1, v3, :cond_3

    .line 44
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "majorVersion"

    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 47
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 48
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v0, v2}, Lcom/android/server/display/config/UsiVersion;->setMajorVersion(Ljava/math/BigInteger;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "minorVersion"

    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 51
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 52
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v0, v2}, Lcom/android/server/display/config/UsiVersion;->setMinorVersion(Ljava/math/BigInteger;)V

    goto :goto_0

    .line 55
    :cond_2
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_3
    if-ne v1, v3, :cond_4

    return-object v0

    .line 59
    :cond_4
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v0, "UsiVersion is not closed"

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getMajorVersion()Ljava/math/BigInteger;
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/android/server/display/config/UsiVersion;->majorVersion:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final getMinorVersion()Ljava/math/BigInteger;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/android/server/display/config/UsiVersion;->minorVersion:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final setMajorVersion(Ljava/math/BigInteger;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/android/server/display/config/UsiVersion;->majorVersion:Ljava/math/BigInteger;

    return-void
.end method

.method public final setMinorVersion(Ljava/math/BigInteger;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/android/server/display/config/UsiVersion;->minorVersion:Ljava/math/BigInteger;

    return-void
.end method
