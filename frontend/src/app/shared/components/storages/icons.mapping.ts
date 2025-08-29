//-- copyright
// OpenProject is an open source project management software.
// Copyright (C) the OpenProject GmbH
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License version 3.
//
// OpenProject is a fork of ChiliProject, which is a fork of Redmine. The copyright follows:
// Copyright (C) 2006-2013 Jean-Philippe Lang
// Copyright (C) 2010-2013 the ChiliProject Team
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
// as published by the Free Software Foundation; either version 2
// of the License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program; if not, write to the Free Software
// Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
//
// See COPYRIGHT and LICENSE files for more details.
//++

import { nextcloud } from 'core-app/shared/components/storages/storages-constants.const';

export interface IFileIcon {
  icon:'file'|'file-media'
  clazz:'pdf'|'img'|'txt'|'doc'|'sheet'|'presentation'|'form'|'primary'|'mov'|'default'
}

export const fileIconMappings:Record<string, IFileIcon> = {
  'application/pdf': { icon: 'file', clazz: 'pdf' },

  'image/jpeg': { icon: 'file-media', clazz: 'img' },
  'image/png': { icon: 'file-media', clazz: 'img' },
  'image/gif': { icon: 'file-media', clazz: 'img' },
  'image/svg+xml': { icon: 'file-media', clazz: 'img' },
  'image/tiff': { icon: 'file-media', clazz: 'img' },
  'image/bmp': { icon: 'file-media', clazz: 'img' },
  'image/webp': { icon: 'file-media', clazz: 'img' },
  'image/heic': { icon: 'file-media', clazz: 'img' },
  'image/heif': { icon: 'file-media', clazz: 'img' },
  'image/avif': { icon: 'file-media', clazz: 'img' },
  'image/cgm': { icon: 'file-media', clazz: 'img' },

  'text/plain': { icon: 'file', clazz: 'txt' },
  'text/markdown': { icon: 'file', clazz: 'txt' },
  'text/html': { icon: 'file', clazz: 'txt' },
  'application/rtf': { icon: 'file', clazz: 'txt' },
  'application/xml': { icon: 'file', clazz: 'txt' },
  'application/xhtml+xml': { icon: 'file', clazz: 'txt' },
  'application/x-tex': { icon: 'file', clazz: 'txt' },

  'application/vnd.oasis.opendocument.text': { icon: 'file', clazz: 'doc' },
  'application/vnd.oasis.opendocument.text-template': { icon: 'file', clazz: 'doc' },
  'application/msword': { icon: 'file', clazz: 'doc' },
  'application/vnd.apple.pages': { icon: 'file', clazz: 'doc' },
  'application/vnd.stardivision.writer': { icon: 'file', clazz: 'doc' },
  'application/x-abiword': { icon: 'file', clazz: 'doc' },
  'application/vnd.openxmlformats-officedocument.wordprocessingml.document': { icon: 'file', clazz: 'doc' },
  'font/otf': { icon: 'file', clazz: 'doc' },

  'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet': { icon: 'file', clazz: 'sheet' },
  'application/vnd.oasis.opendocument.spreadsheet': { icon: 'file', clazz: 'sheet' },
  'application/vnd.oasis.opendocument.spreadsheet-template': { icon: 'file', clazz: 'sheet' },
  'application/vnd.ms-excel': { icon: 'file', clazz: 'sheet' },
  'application/vnd.stardivision.calc': { icon: 'file', clazz: 'sheet' },
  'application/vnd.apple.numbers': { icon: 'file', clazz: 'sheet' },
  'application/x-starcalc': { icon: 'file', clazz: 'sheet' },
  'application/x-quattro-pro': { icon: 'file', clazz: 'sheet' },
  'application/csv': { icon: 'file', clazz: 'sheet' },

  'application/vnd.oasis.opendocument.presentation': { icon: 'file', clazz: 'presentation' },
  'application/vnd.oasis.opendocument.presentation-template': { icon: 'file', clazz: 'presentation' },
  'application/vnd.apple.keynote': { icon: 'file', clazz: 'presentation' },
  'application/vnd.ms-powerpoint': { icon: 'file', clazz: 'presentation' },
  'application/vnd.openxmlformats-officedocument.presentationml.presentation': {
    icon: 'file',
    clazz: 'presentation',
  },
  'application/vnd.stardivision.impress': { icon: 'file', clazz: 'presentation' },
  'application/mathematica': { icon: 'file', clazz: 'presentation' },

  'video/mp4': { icon: 'file-media', clazz: 'mov' },
  'video/x-m4v': { icon: 'file-media', clazz: 'mov' },
  'video/avi': { icon: 'file-media', clazz: 'mov' },
  'video/quicktime': { icon: 'file-media', clazz: 'mov' },
  'video/webm': { icon: 'file-media', clazz: 'mov' },
  'video/mpg': { icon: 'file-media', clazz: 'mov' },
  'video/x-matroska': { icon: 'file-media', clazz: 'mov' },
  'video/mp1s': { icon: 'file-media', clazz: 'mov' },
  'video/mp2p': { icon: 'file-media', clazz: 'mov' },
  'video/3gpp': { icon: 'file-media', clazz: 'mov' },
  'video/3gpp-tt': { icon: 'file-media', clazz: 'mov' },
  'video/3gpp-2': { icon: 'file-media', clazz: 'mov' },

  'application/x-op-directory': { icon: 'file', clazz: 'primary' },
  'application/x-op-drive': { icon: 'file', clazz: 'primary' },

  default: { icon: 'file', clazz: 'default' },
};

export const storageIconMappings:Record<string, string> = {
  [nextcloud]: 'nextcloud-circle',

  default: 'cloud',
};
