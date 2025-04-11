.class public Lcom/android/server/knox/dar/ddar/DDLog$Logger$1;
.super Ljava/lang/Object;
.source "DDLog.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field public final synthetic this$0:Lcom/android/server/knox/dar/ddar/DDLog$Logger;


# direct methods
.method public constructor <init>(Lcom/android/server/knox/dar/ddar/DDLog$Logger;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/knox/dar/ddar/DDLog$Logger$1;->this$0:Lcom/android/server/knox/dar/ddar/DDLog$Logger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    const-string p0, "ddar_fw_log"

    invoke-virtual {p2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, ".txt"

    invoke-virtual {p2, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "ddar_fw_log.txt"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
