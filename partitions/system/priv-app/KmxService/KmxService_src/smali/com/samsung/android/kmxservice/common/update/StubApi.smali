.class public final Lcom/samsung/android/kmxservice/common/update/StubApi;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/samsung/android/kmxservice/common/update/StubApi;

.field private static RESULT_KEY_SET:Ljava/util/HashSet; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SERVER_URL_UPDATE_CHECK:Ljava/lang/String; = "https://vas.samsungapps.com/stub/stubUpdateCheck.as"

.field private static final TAG:Ljava/lang/String; = "StubApi"


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/samsung/android/kmxservice/common/update/StubApi;

    invoke-direct {v0}, Lcom/samsung/android/kmxservice/common/update/StubApi;-><init>()V

    sput-object v0, Lcom/samsung/android/kmxservice/common/update/StubApi;->INSTANCE:Lcom/samsung/android/kmxservice/common/update/StubApi;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/samsung/android/kmxservice/common/update/StubApi;->RESULT_KEY_SET:Ljava/util/HashSet;

    sget-object v0, Lcom/samsung/android/kmxservice/common/update/StubResponseArg;->Companion:Lcom/samsung/android/kmxservice/common/update/StubResponseArg$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/common/update/StubResponseArg$Companion;->values()[Lcom/samsung/android/kmxservice/common/update/StubResponseArg;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    sget-object v4, Lcom/samsung/android/kmxservice/common/update/StubApi;->RESULT_KEY_SET:Ljava/util/HashSet;

    invoke-virtual {v3}, Lcom/samsung/android/kmxservice/common/update/StubResponseArg;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final closeConnection(Ljava/net/HttpURLConnection;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    return-void
.end method

.method private final closeStream(Ljava/io/InputStream;)V
    .locals 0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private final getAbiType()Ljava/lang/String;
    .locals 3

    sget-object p0, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    const-string v0, "SUPPORTED_64_BIT_ABIS"

    invoke-static {p0, v0}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p0, p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    xor-int/2addr p0, v1

    if-eqz p0, :cond_1

    const-string p0, "64"

    goto :goto_1

    :cond_1
    sget-object p0, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    const-string v2, "SUPPORTED_32_BIT_ABIS"

    invoke-static {p0, v2}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p0, p0

    if-nez p0, :cond_2

    move v0, v1

    :cond_2
    xor-int/lit8 p0, v0, 0x1

    if-eqz p0, :cond_3

    const-string p0, "32"

    goto :goto_1

    :cond_3
    const-string p0, "ex"

    :goto_1
    return-object p0
.end method

.method private final getCountryCode()Ljava/lang/String;
    .locals 2

    const-string p0, "persist.omc.country_code"

    const-string v0, ""

    invoke-static {p0, v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "get(\"persist.omc.country_code\", \"\")"

    invoke-static {p0, v1}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    const-string p0, "ro.csc.country_code"

    invoke-static {p0, v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "get(\"ro.csc.country_code\", \"\")"

    invoke-static {p0, v0}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    return-object p0
.end method

.method private final handleStubAPIRequest(Ljava/net/URL;Ljava/lang/String;)Lcom/samsung/android/kmxservice/common/update/StubResponseVo;
    .locals 7

    new-instance v6, Lcom/samsung/android/kmxservice/common/update/StubResponseVo;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/kmxservice/common/update/StubResponseVo;-><init>(JLcom/samsung/android/kmxservice/common/update/StubResponseVo$ServerResponseVo;ILkotlin/jvm/internal/k;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleStubApiRequest "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "StubApi"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_0

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-direct {p0, v3, p2}, Lcom/samsung/android/kmxservice/common/update/StubApi;->parseAppInfoXML(Ljava/io/InputStream;Ljava/lang/String;)Lcom/samsung/android/kmxservice/common/update/StubResponseVo;

    move-result-object v6

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v3

    goto :goto_1

    :catchall_0
    move-exception p2

    move-object v0, v3

    goto :goto_2

    :catch_0
    move-exception p2

    move-object v0, v3

    goto :goto_0

    :catch_1
    move-exception p2

    move-object v0, v3

    goto :goto_0

    :catch_2
    move-exception p2

    move-object v0, v3

    goto :goto_0

    :catch_3
    move-exception p2

    goto :goto_0

    :catch_4
    move-exception p2

    goto :goto_0

    :catch_5
    move-exception p2

    goto :goto_0

    :catchall_1
    move-exception p2

    move-object p1, v0

    goto :goto_2

    :catch_6
    move-exception p2

    move-object p1, v0

    goto :goto_0

    :catch_7
    move-exception p2

    move-object p1, v0

    goto :goto_0

    :catch_8
    move-exception p2

    move-object p1, v0

    :goto_0
    :try_start_3
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_0
    :goto_1
    invoke-direct {p0, v0}, Lcom/samsung/android/kmxservice/common/update/StubApi;->closeStream(Ljava/io/InputStream;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/common/update/StubApi;->closeConnection(Ljava/net/HttpURLConnection;)V

    return-object v6

    :catchall_2
    move-exception p2

    :goto_2
    invoke-direct {p0, v0}, Lcom/samsung/android/kmxservice/common/update/StubApi;->closeStream(Ljava/io/InputStream;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/common/update/StubApi;->closeConnection(Ljava/net/HttpURLConnection;)V

    throw p2
.end method

.method private final makeStubUpdateCheckAPIURL(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri$Builder;
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds"
        }
    .end annotation

    const-string v0, "https://vas.samsungapps.com/stub/stubUpdateCheck.as"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/kmxservice/common/update/DeviceUtil;->INSTANCE:Lcom/samsung/android/kmxservice/common/update/DeviceUtil;

    invoke-virtual {v2, p1, p2}, Lcom/samsung/android/kmxservice/common/update/DeviceUtil;->getAppVersionCode(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/samsung/android/kmxservice/common/update/DeviceUtil;->getModelName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, p1}, Lcom/samsung/android/kmxservice/common/update/DeviceUtil;->getMCC(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, p1}, Lcom/samsung/android/kmxservice/common/update/DeviceUtil;->getMNC(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/samsung/android/kmxservice/common/update/DeviceUtil;->getSalesCode()Ljava/lang/String;

    move-result-object v2

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/common/update/StubApi;->getAbiType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v10, "android_id"

    invoke-static {p1, v10}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/common/update/StubApi;->getCountryCode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/common/update/StubApi;->getPd()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v11, "appId"

    invoke-virtual {v0, v11, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string p2, "callerId"

    invoke-virtual {v0, p2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string p2, "versionCode"

    invoke-virtual {v0, p2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string p2, "deviceId"

    invoke-virtual {v0, p2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string p2, "mcc"

    invoke-virtual {v0, p2, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string p2, "mnc"

    invoke-virtual {v0, p2, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string p2, "csc"

    invoke-virtual {v0, p2, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string p2, "sdkVer"

    invoke-virtual {v0, p2, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string p2, "systemId"

    invoke-virtual {v0, p2, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string p2, "abiType"

    invoke-virtual {v0, p2, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string p2, "extuk"

    invoke-virtual {v0, p2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string p1, "cc"

    invoke-virtual {v0, p1, v10}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string p1, "pd"

    invoke-virtual {v0, p1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    return-object v0
.end method

.method private final parseAppInfoXML(Ljava/io/InputStream;Ljava/lang/String;)Lcom/samsung/android/kmxservice/common/update/StubResponseVo;
    .locals 7

    new-instance v6, Lcom/samsung/android/kmxservice/common/update/StubResponseVo;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/kmxservice/common/update/StubResponseVo;-><init>(JLcom/samsung/android/kmxservice/common/update/StubResponseVo$ServerResponseVo;ILkotlin/jvm/internal/k;)V

    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p1

    new-instance v1, Lcom/google/gson/f;

    invoke-direct {v1}, Lcom/google/gson/f;-><init>()V

    :goto_0
    const/4 v2, 0x1

    if-eq p1, v2, :cond_4

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    const/4 v3, 0x3

    if-eq p1, v3, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {p2, v2}, Lkotlin/text/r;->H(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/samsung/android/kmxservice/common/update/JsonSerializer;->INSTANCE:Lcom/samsung/android/kmxservice/common/update/JsonSerializer;

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/common/update/JsonSerializer;->getJson()Lkotlinx/serialization/json/b;

    move-result-object p1

    invoke-virtual {v1}, Lcom/google/gson/d;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "resultJson.toString()"

    invoke-static {v2, v3}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p1, Lkotlinx/serialization/json/b;->b:Lkotlinx/serialization/modules/b;

    const-class v4, Lcom/samsung/android/kmxservice/common/update/StubResponseVo$ServerResponseVo;

    invoke-static {v4}, Lkotlin/jvm/internal/o;->b(Ljava/lang/Class;)Lkotlin/jvm/internal/q;

    move-result-object v4

    invoke-static {v3, v4}, Lv9/a;->Z(Lkotlinx/serialization/modules/b;Lkotlin/reflect/v;)Lkotlinx/serialization/c;

    move-result-object v3

    invoke-virtual {p1, v3, v2}, Lkotlinx/serialization/json/b;->a(Lkotlinx/serialization/c;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/kmxservice/common/update/StubResponseVo$ServerResponseVo;

    invoke-virtual {v6, p1}, Lcom/samsung/android/kmxservice/common/update/StubResponseVo;->setServerData(Lcom/samsung/android/kmxservice/common/update/StubResponseVo$ServerResponseVo;)V

    const-string p1, "StubApi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "decodeFromString "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    sget-object p1, Lcom/samsung/android/kmxservice/common/update/StubApi;->RESULT_KEY_SET:Ljava/util/HashSet;

    invoke-virtual {p1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0, v0}, Lcom/samsung/android/kmxservice/common/update/StubApi;->readXMLText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    sget-object p1, Lcom/google/gson/e;->a:Lcom/google/gson/e;

    goto :goto_1

    :cond_2
    new-instance v3, Lcom/google/gson/g;

    invoke-direct {v3, p1}, Lcom/google/gson/g;-><init>(Ljava/lang/String;)V

    move-object p1, v3

    :goto_1
    iget-object v3, v1, Lcom/google/gson/f;->a:Lcom/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v3, v2, p1}, Lcom/google/gson/internal/LinkedTreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_2
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_4
    return-object v6

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_3

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    return-object v6
.end method

.method private final readXMLText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p0

    const-string v0, "parser.text"

    invoke-static {p0, v0}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final getPd()I
    .locals 6

    const-string p0, ""

    const-string v0, "/Android/obb"

    filled-new-array {p0, v0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    aget-object v3, p0, v2

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/go_to_andromeda.test"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method public final startStubUpdateCheck(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/kmxservice/common/update/StubResponseVo;
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageName"

    invoke-static {p2, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/kmxservice/common/update/StubApi;->makeStubUpdateCheckAPIURL(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "makeStubUpdateCheckAPIUR\u2026, packageName).toString()"

    invoke-static {p1, p2}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/samsung/android/kmxservice/common/update/StubResponseVo;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/kmxservice/common/update/StubResponseVo;-><init>(JLcom/samsung/android/kmxservice/common/update/StubResponseVo$ServerResponseVo;ILkotlin/jvm/internal/k;)V

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const-string p1, "result"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/kmxservice/common/update/StubApi;->handleStubAPIRequest(Ljava/net/URL;Ljava/lang/String;)Lcom/samsung/android/kmxservice/common/update/StubResponseVo;

    move-result-object p2
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-object p2
.end method
