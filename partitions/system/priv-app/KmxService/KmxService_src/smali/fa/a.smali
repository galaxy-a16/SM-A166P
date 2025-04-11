.class public final Lfa/a;
.super Lj0/b;
.source "SourceFile"


# instance fields
.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Landroid/os/ParcelFileDescriptor;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lj0/b;-><init>(IILjava/lang/Object;)V

    iput-object p4, p0, Lfa/a;->d:Ljava/lang/String;

    iput-object p5, p0, Lfa/a;->e:Ljava/lang/String;

    iput-object p6, p0, Lfa/a;->f:Ljava/lang/String;

    iput-object p7, p0, Lfa/a;->g:Landroid/os/ParcelFileDescriptor;

    return-void
.end method

.method public static e(Landroid/os/Bundle;Landroid/os/ParcelFileDescriptor;)Lfa/a;
    .locals 14

    invoke-static {p0}, Lj0/b;->a(Landroid/os/Bundle;)Lj0/b;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    const-string v2, "modelCode"

    invoke-virtual {p0, v2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "modelName"

    invoke-virtual {p0, v3, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v3, "modifiedDate"

    invoke-virtual {p0, v3, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v3, "division"

    invoke-virtual {p0, v3, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "color"

    invoke-virtual {p0, v4, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v4, "marketingName"

    invoke-virtual {p0, v4, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "keySpec"

    invoke-virtual {p0, v5, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-object v10, v2

    move-object v11, v3

    move-object v12, v4

    goto :goto_0

    :cond_0
    move-object v10, v1

    move-object v11, v10

    move-object v12, v11

    :goto_0
    new-instance p0, Lfa/a;

    iget v7, v0, Lj0/b;->a:I

    iget v8, v0, Lj0/b;->b:I

    iget-object v0, v0, Lj0/b;->c:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    move-object v6, p0

    move-object v13, p1

    invoke-direct/range {v6 .. v13}, Lfa/a;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    return-object p0
.end method

.method public static f(Ljava/lang/Exception;)Lfa/a;
    .locals 9

    new-instance v8, Lfa/a;

    const/4 v1, 0x2

    const v2, 0x55d4a80

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "There is an exception, please check  { "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lfa/a;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    return-object v8
.end method
