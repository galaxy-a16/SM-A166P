.class public final La3/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static c:La3/i;


# instance fields
.field public final a:Landroid/content/Context;

.field public volatile b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, La3/i;->a:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)La3/i;
    .locals 4

    invoke-static {p0}, Lva/n;->i(Ljava/lang/Object;)V

    const-class v0, La3/i;

    monitor-enter v0

    :try_start_0
    sget-object v1, La3/i;->c:La3/i;

    if-nez v1, :cond_1

    sget-object v1, La3/r;->a:La3/m;

    const-class v1, La3/r;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v2, La3/r;->e:Landroid/content/Context;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sput-object v2, La3/r;->e:Landroid/content/Context;

    goto :goto_0

    :cond_0
    const-string v2, "GoogleCertificates"

    const-string v3, "GoogleCertificates has been initialized already"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    monitor-exit v1

    new-instance v1, La3/i;

    invoke-direct {v1, p0}, La3/i;-><init>(Landroid/content/Context;)V

    sput-object v1, La3/i;->c:La3/i;

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0

    :cond_1
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    sget-object p0, La3/i;->c:La3/i;

    return-object p0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public static final varargs c(Landroid/content/pm/PackageInfo;[La3/n;)La3/n;
    .locals 3

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    array-length v0, v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const-string p0, "GoogleSignatureVerifier"

    const-string p1, "Package has more than one signature."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    new-instance v0, La3/o;

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v2, 0x0

    aget-object p0, p0, v2

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    invoke-direct {v0, p0}, La3/o;-><init>([B)V

    :goto_0
    array-length p0, p1

    if-ge v2, p0, :cond_3

    aget-object p0, p1, v2

    invoke-virtual {p0, v0}, La3/n;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    aget-object p0, p1, v2

    return-object p0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public static final d(Landroid/content/pm/PackageInfo;Z)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    if-eqz p0, :cond_3

    const-string v2, "com.android.vending"

    iget-object v3, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.google.android.gms"

    iget-object v3, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    iget-object p1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez p1, :cond_2

    :cond_1
    move p1, v1

    goto :goto_0

    :cond_2
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 p1, p1, 0x81

    if-eqz p1, :cond_1

    move p1, v0

    :cond_3
    :goto_0
    if-eqz p0, :cond_5

    iget-object v2, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v2, :cond_5

    if-eqz p1, :cond_4

    sget-object p1, La3/q;->a:[La3/n;

    invoke-static {p0, p1}, La3/i;->c(Landroid/content/pm/PackageInfo;[La3/n;)La3/n;

    move-result-object p0

    goto :goto_1

    :cond_4
    new-array p1, v0, [La3/n;

    sget-object v2, La3/q;->a:[La3/n;

    aget-object v2, v2, v1

    aput-object v2, p1, v1

    invoke-static {p0, p1}, La3/i;->c(Landroid/content/pm/PackageInfo;[La3/n;)La3/n;

    move-result-object p0

    :goto_1
    if-eqz p0, :cond_5

    return v0

    :cond_5
    return v1
.end method


# virtual methods
.method public final b(I)Z
    .locals 18

    move-object/from16 v1, p0

    iget-object v0, v1, La3/i;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    move/from16 v2, p1

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v2, :cond_e

    array-length v6, v2

    if-nez v6, :cond_0

    goto/16 :goto_a

    :cond_0
    move-object v0, v4

    move v7, v5

    :goto_0
    if-ge v7, v6, :cond_d

    aget-object v8, v2, v7

    const-string v9, "Failed to get Google certificates from remote"

    const-string v10, "GoogleCertificates"

    const-string v11, "null pkg"

    if-nez v8, :cond_1

    new-instance v0, La3/x;

    invoke-direct {v0, v5, v11, v4}, La3/x;-><init>(ZLjava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_9

    :cond_1
    iget-object v0, v1, La3/i;->b:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, La3/r;->a:La3/m;

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v12

    :try_start_0
    invoke-static {}, La3/r;->b()V

    sget-object v0, La3/r;->c:Lc3/z;

    check-cast v0, Lc3/x;

    invoke-virtual {v0}, Lc3/x;->A()Z

    move-result v0
    :try_end_0
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v12}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v10, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v12}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    move v0, v5

    :goto_1
    const/4 v12, 0x2

    const/4 v13, 0x1

    if-eqz v0, :cond_5

    iget-object v0, v1, La3/i;->a:Landroid/content/Context;

    invoke-static {v0}, La3/h;->a(Landroid/content/Context;)Z

    move-result v0

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v11

    :try_start_2
    sget-object v14, La3/r;->e:Landroid/content/Context;

    invoke-static {v14}, Lva/n;->i(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-static {}, La3/r;->b()V
    :try_end_3
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    sget-object v14, La3/r;->e:Landroid/content/Context;

    new-instance v15, Li3/b;

    invoke-direct {v15, v14}, Li3/b;-><init>(Ljava/lang/Object;)V

    invoke-static {v15}, Li3/b;->c(Landroid/os/IBinder;)Li3/a;

    move-result-object v14

    invoke-static {v14}, Li3/b;->d(Li3/a;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/Context;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    sget-object v15, La3/r;->c:Lc3/z;

    check-cast v15, Lc3/x;

    invoke-virtual {v15}, Ll3/a;->c()Landroid/os/Parcel;

    move-result-object v4

    sget v16, Lcom/google/android/gms/internal/common/g;->a:I

    invoke-virtual {v4, v13}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v3, 0x4f45

    invoke-static {v4, v3}, Lcom/fasterxml/jackson/annotation/i0;->O(Landroid/os/Parcel;I)I

    move-result v3

    invoke-static {v4, v13, v8}, Lcom/fasterxml/jackson/annotation/i0;->L(Landroid/os/Parcel;ILjava/lang/String;)V

    invoke-static {v4, v12, v0}, Lcom/fasterxml/jackson/annotation/i0;->F(Landroid/os/Parcel;IZ)V

    const/4 v12, 0x3

    invoke-static {v4, v12, v5}, Lcom/fasterxml/jackson/annotation/i0;->F(Landroid/os/Parcel;IZ)V

    new-instance v0, Li3/b;

    invoke-direct {v0, v14}, Li3/b;-><init>(Ljava/lang/Object;)V

    const/4 v12, 0x4

    invoke-static {v4, v12, v0}, Lcom/fasterxml/jackson/annotation/i0;->H(Landroid/os/Parcel;ILandroid/os/IBinder;)V

    const/4 v0, 0x5

    invoke-static {v4, v0, v5}, Lcom/fasterxml/jackson/annotation/i0;->F(Landroid/os/Parcel;IZ)V

    invoke-static {v4, v3}, Lcom/fasterxml/jackson/annotation/i0;->Q(Landroid/os/Parcel;I)V

    const/4 v0, 0x6

    invoke-virtual {v15, v4, v0}, Ll3/a;->a(Landroid/os/Parcel;I)Landroid/os/Parcel;

    move-result-object v0

    sget-object v3, La3/t;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/common/g;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, La3/t;

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    iget-boolean v0, v3, La3/t;->a:Z

    if-eqz v0, :cond_2

    iget v0, v3, La3/t;->d:I

    invoke-static {v0}, Lkotlin/jvm/internal/m;->v(I)I

    new-instance v0, La3/x;

    const/4 v3, 0x0

    invoke-direct {v0, v13, v3, v3}, La3/x;-><init>(ZLjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_4

    :cond_2
    iget-object v0, v3, La3/t;->b:Ljava/lang/String;

    iget v4, v3, La3/t;->c:I

    invoke-static {v4}, Lg2/m;->p(I)I

    move-result v4

    if-ne v4, v12, :cond_3

    new-instance v4, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v4}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>()V

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    const-string v9, "error checking package certificate"

    if-nez v0, :cond_4

    move-object v0, v9

    :cond_4
    iget v9, v3, La3/t;->d:I

    invoke-static {v9}, Lkotlin/jvm/internal/m;->v(I)I

    iget v3, v3, La3/t;->c:I

    invoke-static {v3}, Lg2/m;->p(I)I

    new-instance v3, La3/x;

    invoke-direct {v3, v5, v0, v4}, La3/x;-><init>(ZLjava/lang/String;Ljava/lang/Exception;)V

    move-object v0, v3

    goto :goto_4

    :catch_1
    move-exception v0

    invoke-static {v10, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v3, "module call"

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v3, v0

    invoke-static {v10, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, "module init: "

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v17, v3

    move-object v3, v0

    move-object/from16 v0, v17

    :goto_3
    new-instance v4, La3/x;

    invoke-direct {v4, v5, v3, v0}, La3/x;-><init>(ZLjava/lang/String;Ljava/lang/Exception;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object v0, v4

    :goto_4
    invoke-static {v11}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto/16 :goto_7

    :catchall_1
    move-exception v0

    invoke-static {v11}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v0

    :cond_5
    :try_start_7
    iget-object v0, v1, La3/i;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v3, 0x40

    invoke-virtual {v0, v8, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_3

    iget-object v3, v1, La3/i;->a:Landroid/content/Context;

    invoke-static {v3}, La3/h;->a(Landroid/content/Context;)Z

    move-result v3

    if-nez v0, :cond_6

    new-instance v0, La3/x;

    const/4 v3, 0x0

    invoke-direct {v0, v5, v11, v3}, La3/x;-><init>(ZLjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_7

    :cond_6
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v4, :cond_8

    array-length v4, v4

    if-eq v4, v13, :cond_7

    goto :goto_5

    :cond_7
    new-instance v4, La3/o;

    iget-object v9, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v9, v9, v5

    invoke-virtual {v9}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v9

    invoke-direct {v4, v9}, La3/o;-><init>([B)V

    iget-object v9, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v10

    :try_start_8
    invoke-static {v9, v4, v3, v5}, La3/r;->a(Ljava/lang/String;La3/n;ZZ)La3/x;

    move-result-object v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    invoke-static {v10}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    iget-boolean v10, v3, La3/x;->a:Z

    if-eqz v10, :cond_9

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_9

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v0, v12

    if-eqz v0, :cond_9

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v10

    :try_start_9
    invoke-static {v9, v4, v5, v13}, La3/r;->a(Ljava/lang/String;La3/n;ZZ)La3/x;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    invoke-static {v10}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    iget-boolean v0, v0, La3/x;->a:Z

    if-eqz v0, :cond_9

    const-string v0, "debuggable release cert app rejected"

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object v1, v0

    invoke-static {v10}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v1

    :catchall_3
    move-exception v0

    move-object v1, v0

    invoke-static {v10}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v1

    :cond_8
    :goto_5
    const-string v0, "single cert required"

    :goto_6
    new-instance v3, La3/x;

    const/4 v4, 0x0

    invoke-direct {v3, v5, v0, v4}, La3/x;-><init>(ZLjava/lang/String;Ljava/lang/Exception;)V

    :cond_9
    move-object v0, v3

    :goto_7
    iget-boolean v3, v0, La3/x;->a:Z

    if-eqz v3, :cond_b

    iput-object v8, v1, La3/i;->b:Ljava/lang/String;

    goto :goto_9

    :catch_3
    move-exception v0

    const-string v3, "no pkg "

    invoke-virtual {v3, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, La3/x;

    invoke-direct {v4, v5, v3, v0}, La3/x;-><init>(ZLjava/lang/String;Ljava/lang/Exception;)V

    move-object v0, v4

    goto :goto_9

    :goto_8
    invoke-static {v12}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v0

    :cond_a
    sget-object v0, La3/x;->d:La3/x;

    :cond_b
    :goto_9
    iget-boolean v3, v0, La3/x;->a:Z

    if-eqz v3, :cond_c

    goto :goto_b

    :cond_c
    add-int/lit8 v7, v7, 0x1

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_d
    invoke-static {v0}, Lva/n;->i(Ljava/lang/Object;)V

    goto :goto_b

    :cond_e
    :goto_a
    new-instance v0, La3/x;

    const-string v1, "no pkgs"

    const/4 v2, 0x0

    invoke-direct {v0, v5, v1, v2}, La3/x;-><init>(ZLjava/lang/String;Ljava/lang/Exception;)V

    :goto_b
    iget-boolean v1, v0, La3/x;->a:Z

    if-nez v1, :cond_10

    const-string v1, "GoogleCertificatesRslt"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, v0, La3/x;->c:Ljava/lang/Throwable;

    invoke-virtual {v0}, La3/x;->a()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_f

    invoke-static {v1, v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    :cond_f
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    :goto_c
    iget-boolean v0, v0, La3/x;->a:Z

    return v0
.end method
