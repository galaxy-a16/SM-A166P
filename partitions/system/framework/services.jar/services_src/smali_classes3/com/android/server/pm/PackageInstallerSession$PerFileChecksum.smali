.class public Lcom/android/server/pm/PackageInstallerSession$PerFileChecksum;
.super Ljava/lang/Object;
.source "PackageInstallerSession.java"


# instance fields
.field public final mChecksums:[Landroid/content/pm/Checksum;

.field public final mSignature:[B


# direct methods
.method public constructor <init>([Landroid/content/pm/Checksum;[B)V
    .locals 0

    .line 558
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 559
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$PerFileChecksum;->mChecksums:[Landroid/content/pm/Checksum;

    .line 560
    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerSession$PerFileChecksum;->mSignature:[B

    return-void
.end method


# virtual methods
.method public getChecksums()[Landroid/content/pm/Checksum;
    .locals 0

    .line 564
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$PerFileChecksum;->mChecksums:[Landroid/content/pm/Checksum;

    return-object p0
.end method

.method public getSignature()[B
    .locals 0

    .line 568
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$PerFileChecksum;->mSignature:[B

    return-object p0
.end method
