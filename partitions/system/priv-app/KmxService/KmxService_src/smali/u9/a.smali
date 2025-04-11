.class public final Lu9/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile g:Lu9/a;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lu9/a;->e:Ljava/lang/Object;

    iput-object v0, p0, Lu9/a;->f:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lu9/a;->a:Ljava/lang/Object;

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, p0, Lu9/a;->b:Ljava/lang/Object;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lu9/a;->c:Ljava/lang/Object;

    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    iput-object v0, p0, Lu9/a;->d:Ljava/lang/Object;

    const-string v0, "phone"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lu9/a;->e:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lu9/a;->f:Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/c;)V
    .locals 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lu9/a;->a:Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v0

    iput-object v0, p0, Lu9/a;->c:Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object p1

    iput-object p1, p0, Lu9/a;->b:Ljava/lang/Object;

    .line 2
    sget-object p1, Lh2/a;->e:Ljava/lang/RuntimeException;

    if-nez p1, :cond_9

    sget-object p1, Lh2/a;->d:Lh2/a;

    .line 3
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/c;->c()Ljava/lang/Class;

    move-result-object v0

    .line 4
    invoke-virtual {p1, v0}, Lh2/a;->a(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move-object v4, v3

    goto :goto_1

    .line 5
    :cond_0
    array-length v4, v1

    new-array v4, v4, [Lcom/google/android/gms/internal/measurement/h3;

    move v5, v2

    :goto_0
    array-length v6, v1

    if-ge v5, v6, :cond_1

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x3

    :try_start_0
    iget-object v9, p1, Lh2/a;->b:Ljava/lang/reflect/Method;

    aget-object v10, v1, v5

    new-array v11, v2, [Ljava/lang/Object;

    invoke-virtual {v9, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v10, p1, Lh2/a;->c:Ljava/lang/reflect/Method;

    aget-object v11, v1, v5

    new-array v12, v2, [Ljava/lang/Object;

    invoke-virtual {v10, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    new-instance v6, Lcom/google/android/gms/internal/measurement/h3;

    const/4 v7, 0x4

    invoke-direct {v6, v7, v10, v9}, Lcom/google/android/gms/internal/measurement/h3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-array p2, v8, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p2, v2

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v6

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/h;->z(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v7

    const-string v0, "Failed to access type of field #%d (of %d) of Record type %s"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-array p2, v8, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p2, v2

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v6

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/h;->z(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v7

    const-string v0, "Failed to access name of field #%d (of %d) of Record type %s"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 6
    :cond_1
    :goto_1
    iput-object v4, p0, Lu9/a;->f:Ljava/lang/Object;

    if-nez v4, :cond_2

    check-cast p2, Lcom/fasterxml/jackson/databind/introspect/p;

    .line 7
    iget-object p1, p2, Lcom/fasterxml/jackson/databind/introspect/p;->e:Lcom/fasterxml/jackson/databind/introspect/d;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/d;->b()Lp1/v;

    move-result-object p1

    .line 8
    iget-object p1, p1, Lp1/v;->c:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    .line 9
    iput-object p1, p0, Lu9/a;->d:Ljava/lang/Object;

    goto :goto_5

    :cond_2
    array-length p1, v4

    check-cast p2, Lcom/fasterxml/jackson/databind/introspect/p;

    if-nez p1, :cond_3

    .line 10
    iget-object p1, p2, Lcom/fasterxml/jackson/databind/introspect/p;->e:Lcom/fasterxml/jackson/databind/introspect/d;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/d;->b()Lp1/v;

    move-result-object p1

    .line 11
    iget-object p1, p1, Lp1/v;->b:Ljava/lang/Object;

    check-cast p1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    .line 12
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lu9/a;->d:Ljava/lang/Object;

    move-object v3, p1

    goto :goto_4

    .line 13
    :cond_3
    iget-object p2, p2, Lcom/fasterxml/jackson/databind/introspect/p;->e:Lcom/fasterxml/jackson/databind/introspect/d;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/introspect/d;->b()Lp1/v;

    move-result-object p2

    .line 14
    iget-object p2, p2, Lp1/v;->c:Ljava/lang/Object;

    check-cast p2, Ljava/util/List;

    .line 15
    iput-object p2, p0, Lu9/a;->d:Ljava/lang/Object;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;->getParameterCount()I

    move-result v1

    if-eq v1, p1, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_3
    if-ge v1, p1, :cond_6

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;->getRawParameterType(I)Ljava/lang/Class;

    move-result-object v4

    iget-object v5, p0, Lu9/a;->f:Ljava/lang/Object;

    check-cast v5, [Lcom/google/android/gms/internal/measurement/h3;

    aget-object v5, v5, v1

    iget-object v5, v5, Lcom/google/android/gms/internal/measurement/h3;->b:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Class;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    move-object v3, v0

    :cond_7
    :goto_4
    if-eqz v3, :cond_8

    :goto_5
    iput-object v3, p0, Lu9/a;->e:Ljava/lang/Object;

    return-void

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Failed to find the canonical Record constructor of type "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lu9/a;->a:Ljava/lang/Object;

    check-cast p0, Lcom/fasterxml/jackson/databind/c;

    .line 16
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/c;->a:Lcom/fasterxml/jackson/databind/JavaType;

    .line 17
    invoke-static {p0}, Lcom/fasterxml/jackson/databind/util/h;->q(Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_9
    throw p1
.end method

.method public constructor <init>(Lv4/g;Lw1/e;Lj5/a;Lj5/a;Lk5/d;)V
    .locals 2

    new-instance v0, Lz2/b;

    .line 19
    invoke-virtual {p1}, Lv4/g;->a()V

    .line 20
    iget-object v1, p1, Lv4/g;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lz2/b;-><init>(Landroid/content/Context;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu9/a;->a:Ljava/lang/Object;

    iput-object p2, p0, Lu9/a;->b:Ljava/lang/Object;

    iput-object v0, p0, Lu9/a;->c:Ljava/lang/Object;

    iput-object p3, p0, Lu9/a;->d:Ljava/lang/Object;

    iput-object p4, p0, Lu9/a;->e:Ljava/lang/Object;

    iput-object p5, p0, Lu9/a;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lr3/o;)Lr3/o;
    .locals 3

    new-instance v0, Li/a;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Li/a;-><init>(I)V

    new-instance v1, La5/a;

    const/16 v2, 0xc

    invoke-direct {v1, p0, v2}, La5/a;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0, v1}, Lr3/o;->g(Ljava/util/concurrent/Executor;Lr3/b;)Lr3/o;

    move-result-object p0

    return-object p0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "scope"

    invoke-virtual {p3, v0, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "sender"

    invoke-virtual {p3, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "subtype"

    invoke-virtual {p3, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "gmp_app_id"

    iget-object p2, p0, Lu9/a;->a:Ljava/lang/Object;

    check-cast p2, Lv4/g;

    invoke-virtual {p2}, Lv4/g;->a()V

    iget-object p2, p2, Lv4/g;->c:Lv4/i;

    iget-object p2, p2, Lv4/i;->b:Ljava/lang/String;

    invoke-virtual {p3, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "gmsv"

    iget-object p2, p0, Lu9/a;->b:Ljava/lang/Object;

    check-cast p2, Lw1/e;

    monitor-enter p2

    :try_start_0
    iget v0, p2, Lw1/e;->a:I

    if-nez v0, :cond_0

    const-string v0, "com.google.android.gms"

    invoke-virtual {p2, v0}, Lw1/e;->e(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v0, p2, Lw1/e;->a:I

    :cond_0
    iget v0, p2, Lw1/e;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    monitor-exit p2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "osv"

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "app_ver"

    iget-object p2, p0, Lu9/a;->b:Ljava/lang/Object;

    check-cast p2, Lw1/e;

    invoke-virtual {p2}, Lw1/e;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "app_ver_name"

    iget-object p2, p0, Lu9/a;->b:Ljava/lang/Object;

    check-cast p2, Lw1/e;

    monitor-enter p2

    :try_start_1
    iget-object v0, p2, Lw1/e;->e:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lw1/e;->g()V

    :cond_1
    iget-object v0, p2, Lw1/e;->e:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    monitor-exit p2

    invoke-virtual {p3, p1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "firebase-app-name-hash"

    iget-object p2, p0, Lu9/a;->a:Ljava/lang/Object;

    check-cast p2, Lv4/g;

    invoke-virtual {p2}, Lv4/g;->a()V

    iget-object p2, p2, Lv4/g;->b:Ljava/lang/String;

    const-string v0, "SHA-1"

    :try_start_2
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p2

    const/16 v0, 0xb

    invoke-static {p2, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    const-string p2, "[HASH-ERROR]"

    :goto_0
    invoke-virtual {p3, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_3
    iget-object p1, p0, Lu9/a;->f:Ljava/lang/Object;

    check-cast p1, Lk5/d;

    check-cast p1, Lcom/google/firebase/installations/a;

    invoke-virtual {p1}, Lcom/google/firebase/installations/a;->d()Lr3/o;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;->b(Lr3/h;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lk5/a;

    iget-object p1, p1, Lk5/a;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "Goog-Firebase-Installations-Auth"

    invoke-virtual {p3, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string p1, "FirebaseMessaging"

    const-string p2, "FIS auth token is empty"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    const-string p2, "FirebaseMessaging"

    const-string v0, "Failed to get FIS auth token"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    const-string p1, "appid"

    iget-object p2, p0, Lu9/a;->f:Ljava/lang/Object;

    check-cast p2, Lk5/d;

    check-cast p2, Lcom/google/firebase/installations/a;

    invoke-virtual {p2}, Lcom/google/firebase/installations/a;->c()Lr3/o;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;->b(Lr3/h;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p3, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "cliv"

    const-string p2, "fcm-23.4.0"

    invoke-virtual {p3, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lu9/a;->e:Ljava/lang/Object;

    check-cast p1, Lj5/a;

    invoke-interface {p1}, Lj5/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh5/f;

    iget-object p0, p0, Lu9/a;->d:Ljava/lang/Object;

    check-cast p0, Lj5/a;

    invoke-interface {p0}, Lj5/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lp5/b;

    if-eqz p1, :cond_4

    if-eqz p0, :cond_4

    check-cast p1, Lh5/c;

    monitor-enter p1

    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p2, p1, Lh5/c;->a:Lj5/a;

    invoke-interface {p2}, Lj5/a;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lh5/g;

    monitor-enter p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-virtual {p2, v0, v1}, Lh5/g;->g(J)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    monitor-exit p2

    if-eqz v0, :cond_3

    monitor-enter p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lh5/g;->d(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lh5/g;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "last-used-date"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {p2, v0}, Lh5/g;->f(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    monitor-exit p2

    sget-object p2, Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;->GLOBAL:Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit p2

    throw p0

    :cond_3
    sget-object p2, Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;->NONE:Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :goto_2
    monitor-exit p1

    sget-object p1, Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;->NONE:Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;

    if-eq p2, p1, :cond_4

    const-string p1, "Firebase-Client-Log-Type"

    invoke-virtual {p2}, Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;->getCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Firebase-Client"

    invoke-virtual {p0}, Lp5/b;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catchall_1
    move-exception p0

    :try_start_9
    monitor-exit p2

    throw p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_2
    move-exception p0

    monitor-exit p1

    throw p0

    :cond_4
    :goto_3
    return-void

    :catchall_3
    move-exception p0

    monitor-exit p2

    throw p0

    :catchall_4
    move-exception p0

    monitor-exit p2

    throw p0
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lr3/o;
    .locals 2

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lu9/a;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Lu9/a;->c:Ljava/lang/Object;

    check-cast p0, Lz2/b;

    iget-object p1, p0, Lz2/b;->c:Lj0/b;

    invoke-virtual {p1}, Lj0/b;->c()I

    move-result p2

    sget-object v0, Lz2/m;->a:Lz2/m;

    const v1, 0xb71b00

    if-ge p2, v1, :cond_1

    invoke-virtual {p1}, Lj0/b;->d()I

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p3}, Lz2/b;->a(Landroid/os/Bundle;)Lr3/o;

    move-result-object p1

    new-instance p2, Lp1/c;

    const/4 v1, 0x7

    invoke-direct {p2, v1, p0, p3}, Lp1/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v0, p2}, Lr3/o;->h(Ljava/util/concurrent/Executor;Lr3/b;)Lr3/o;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "MISSING_INSTANCEID_SERVICE"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    new-instance p1, Lr3/o;

    invoke-direct {p1}, Lr3/o;-><init>()V

    invoke-virtual {p1, p0}, Lr3/o;->i(Ljava/lang/Exception;)V

    move-object p0, p1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lz2/b;->b:Landroid/content/Context;

    invoke-static {p0}, Lz2/l;->a(Landroid/content/Context;)Lz2/l;

    move-result-object p0

    new-instance p1, Lz2/j;

    monitor-enter p0

    :try_start_1
    iget p2, p0, Lz2/l;->a:I

    add-int/lit8 v1, p2, 0x1

    iput v1, p0, Lz2/l;->a:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    const/4 v1, 0x1

    invoke-direct {p1, p2, v1, p3, v1}, Lz2/j;-><init>(IILandroid/os/Bundle;I)V

    invoke-virtual {p0, p1}, Lz2/l;->b(Lz2/j;)Lr3/o;

    move-result-object p0

    sget-object p1, Lc3/l;->i:Lc3/l;

    invoke-virtual {p0, v0, p1}, Lr3/o;->g(Ljava/util/concurrent/Executor;Lr3/b;)Lr3/o;

    move-result-object p0

    :goto_0
    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :catch_0
    move-exception p0

    new-instance p1, Lr3/o;

    invoke-direct {p1}, Lr3/o;-><init>()V

    invoke-virtual {p1, p0}, Lr3/o;->i(Ljava/lang/Exception;)V

    return-object p1
.end method
