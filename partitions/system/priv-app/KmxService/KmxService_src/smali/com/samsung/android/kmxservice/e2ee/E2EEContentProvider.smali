.class public Lcom/samsung/android/kmxservice/e2ee/E2EEContentProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# instance fields
.field private kmxE2eeService:Lcom/samsung/android/kmxservice/e2ee/KmxE2eeService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    iget-object p2, p0, Lcom/samsung/android/kmxservice/e2ee/E2EEContentProvider;->kmxE2eeService:Lcom/samsung/android/kmxservice/e2ee/KmxE2eeService;

    if-nez p2, :cond_0

    new-instance p2, Lcom/samsung/android/kmxservice/e2ee/KmxE2eeService;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/samsung/android/kmxservice/e2ee/KmxE2eeService;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/kmxservice/e2ee/E2EEContentProvider;->kmxE2eeService:Lcom/samsung/android/kmxservice/e2ee/KmxE2eeService;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/E2EEContentProvider;->kmxE2eeService:Lcom/samsung/android/kmxservice/e2ee/KmxE2eeService;

    invoke-virtual {p0, p1, p3}, Lcom/samsung/android/kmxservice/e2ee/KmxE2eeService;->command(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
